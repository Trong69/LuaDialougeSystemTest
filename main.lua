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

local utf8 = require("utf8")

local function loadNode(nodeId)
    local node = dialogueData.nodes[nodeId]
    currentNodeId = nodeId
    currentText = node.text
    fullTextLength = utf8.len(currentText)
    displayedText = ""
    typingTimer = 0
    typingDone = false
end

function love.load()
    love.graphics.setFont(love.graphics.newFont(15))
    loadNode("start")
end

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
    end
end

function love.draw()
    if inDialogue then
        local node = dialogueData.nodes[currentNodeId]

        -- Draw speaker name normally (no jumping)
        love.graphics.printf(node.speaker .. ": " .. displayedText, 50, 50, 700)

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
