local dialogueData = require("dnd_dialogue")

local currentNodeId
local inDialogue = true

-- Typing effect variables
local displayedText = ""
local typingSpeed = 50  -- characters per second
local typingTimer = 0
local currentText = ""
local fullTextLength = 0
local typingDone = false

-- Jump effect variables
local jumpTimers = {}        -- jumpTimers[i] = time since letter i appeared
local jumpDuration = 0.4     -- seconds
local jumpHeight = 10        -- pixels

local function loadNode(nodeId)
    local node = dialogueData.nodes[nodeId]
    currentNodeId = nodeId
    currentText = node.text
    fullTextLength = #currentText
    displayedText = ""
    typingTimer = 0
    typingDone = false
    jumpTimers = {}
end

function love.load()
    --love.graphics.setFont(love.graphics.newFont(20))
    loadNode("start")
end

local utf8 = require("utf8")

function love.update(dt)
    if not typingDone then
        typingTimer = typingTimer + dt
        local charsToShow = math.floor(typingTimer * typingSpeed)
        if charsToShow > utf8.len(currentText) then
            charsToShow = utf8.len(currentText)
            typingDone = true
        end

        -- Get first charsToShow UTF8 characters safely
        local count = 0
        displayedText = ""
        for p, c in utf8.codes(currentText) do
            displayedText = displayedText .. utf8.char(c)
            count = count + 1
            if count >= charsToShow then
                break
            end
        end

        -- Reset jump timers for new letters
        for i = 1, charsToShow do
            if not jumpTimers[i] then
                jumpTimers[i] = 0
            end
        end
    end

    -- Update jump timers for visible letters
    for i, t in pairs(jumpTimers) do
        if t < jumpDuration then
            jumpTimers[i] = t + dt
        end
    end
end


function love.draw()
    if inDialogue then
        local node = dialogueData.nodes[currentNodeId]

        local speakerText = node.speaker .. ": "
        love.graphics.printf(speakerText, 50, 50, 700)

        local x = 50 + love.graphics.getFont():getWidth(speakerText)
        local y = 50

        local i = 0  -- character count

        for p, c in utf8.codes(displayedText) do
            i = i + 1
            local char = utf8.char(c)
            local offsetY = 0
            local t = jumpTimers[i]

            if t and t < jumpDuration then
                local progress = t / jumpDuration
                offsetY = -4 * jumpHeight * progress * (1 - progress)
            end

            love.graphics.print(char, x, y + offsetY)
            x = x + love.graphics.getFont():getWidth(char)
        end

        if typingDone then
            if node.choices then
                for i, choice in ipairs(node.choices) do
                    love.graphics.printf(i .. ". " .. choice.text, 70, 100 + i * 30, 700)
                end
            else
                love.graphics.printf("Press ENTER to continue", 70, 150, 700)
            end
        end
    end
end

function love.keypressed(key)
    if not inDialogue then return end
    local node = dialogueData.nodes[currentNodeId]

    if not typingDone then
        -- Skip typing effect and show full text immediately
        displayedText = currentText
        typingDone = true
        return
    end

    if node.choices then
        local choiceIndex = tonumber(key)
        if choiceIndex and node.choices[choiceIndex] then
            loadNode(node.choices[choiceIndex].next)
        end
    else
        if key == "return" then
            inDialogue = false
        end
    end
end