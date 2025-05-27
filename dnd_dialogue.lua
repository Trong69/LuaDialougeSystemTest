local dialogues = {
  nodes = {
    start = {
      speaker = "Head Chamberlain",
      text = "Ah, you've arrived at court. The palace is buzzing with whispers today. What brings you to seek audience?",
      choices = {
        { text = "I come bearing news from the border provinces.", next = "news_bearer" },
        { text = "I seek employment in the royal household.", next = "job_seeker" },
        { text = "I have information about certain... indiscretions.", next = "gossip_monger" },
        { text = "I'm here to deliver a message to Lady Evelyn.", next = "message_delivery" }
      }
    },

    news_bearer = {
      speaker = "Head Chamberlain",
      text = "News from the borders? Urgent, I hope? The King is currently... indisposed with Lady Evelyn, and the Queen holds court in the eastern wing.",
      choices = {
        { text = "The news is urgent - bandits threaten the trade routes.", next = "urgent_news" },
        { text = "It can wait. Tell me more about Lady Evelyn.", next = "evelyn_inquiry" },
        { text = "I should speak with the Queen instead.", next = "queen_approach" },
        { text = "Perhaps I should return when the King is available.", next = "wait_king" }
      }
    },

    job_seeker = {
      speaker = "Head Chamberlain",
      text = "Employment? We always need capable hands. The Queen's retinue seeks a new lady-in-waiting, or perhaps you'd prefer the kitchens? Though I warn you, palace life requires... discretion.",
      choices = {
        { text = "Lady-in-waiting sounds perfect.", next = "queen_service" },
        { text = "Kitchen work suits me fine.", next = "kitchen_work" },
        { text = "What kind of discretion are we talking about?", next = "discretion_talk" },
        { text = "Are there positions serving the King directly?", next = "king_service" }
      }
    },

    gossip_monger = {
      speaker = "Head Chamberlain",
      text = "Information about indiscretions? *lowers voice* That's dangerous talk, friend. Are you speaking of the King's... arrangements, or something else entirely?",
      choices = {
        { text = "I know about the King and Lady Evelyn's meetings.", next = "affair_knowledge" },
        { text = "I've heard the Queen has her own secrets.", next = "queen_secrets" },
        { text = "The servants are planning something.", next = "servant_plot" },
        { text = "Never mind, I spoke out of turn.", next = "retreat_gossip" }
      }
    },

    message_delivery = {
      speaker = "Head Chamberlain",
      text = "A message for Lady Evelyn? She's currently with His Majesty in the private gardens. Though I wonder... who sends messages to the King's favorite?",
      choices = {
        { text = "It's from her family in the countryside.", next = "family_message" },
        { text = "A merchant wishes to speak with her about jewelry.", next = "merchant_message" },
        { text = "I'd rather not say - it's personal.", next = "mysterious_message" },
        { text = "Actually, I'll wait until she's alone.", next = "wait_evelyn" }
      }
    },

    urgent_news = {
      speaker = "Head Chamberlain",
      text = "Bandits? This is serious indeed. I could interrupt the King immediately, or we could present this to the Queen first - she handles many military matters these days.",
      choices = {
        { text = "Interrupt the King immediately.", next = "interrupt_king" },
        { text = "Let's speak with the Queen first.", next = "queen_military" },
        { text = "Could we gather both King and Queen together?", next = "royal_council" },
        { text = "Perhaps the Captain of Guards should hear this first.", next = "captain_first" }
      }
    },

    evelyn_inquiry = {
      speaker = "Head Chamberlain",
      text = "Lady Evelyn arrived six months ago as the Queen's cousin. Beautiful, intelligent, and... well, she's caught the King's attention rather thoroughly. The Queen pretends not to notice.",
      choices = {
        { text = "How does the Queen really feel about this?", next = "queen_feelings" },
        { text = "Is Lady Evelyn ambitious or just naive?", next = "evelyn_nature" },
        { text = "This could be useful information...", next = "scheme_brewing" },
        { text = "I should focus on my original business.", next = "back_to_business" }
      }
    },

    queen_approach = {
      speaker = "Queen Isabella",
      text = "Welcome to court. I understand you bring news? Please, speak freely - I find myself managing more affairs of state these days.",
      choices = {
        { text = "Your Majesty, bandits threaten our trade routes.", next = "queen_bandits" },
        { text = "I also bring regards from the border lords.", next = "border_politics" },
        { text = "Your Majesty seems troubled. Is all well?", next = "queen_troubles" },
        { text = "Perhaps we should include the King in this discussion?", next = "suggest_king" }
      }
    },

    wait_king = {
      speaker = "Servant Thomas",
      text = "You'll be waiting a while, friend. The King spends most afternoons with Lady Evelyn. Some say she's teaching him poetry, others say... well, other things.",
      choices = {
        { text = "How long has this been going on?", next = "affair_timeline" },
        { text = "What do the other servants think?", next = "servant_opinions" },
        { text = "Does the Queen know?", next = "queen_knowledge" },
        { text = "I should mind my own business.", next = "neutral_stance" }
      }
    },

    queen_service = {
      speaker = "Head Chamberlain",
      text = "The Queen's service is honorable work. She values loyalty above all else. But I must warn you - she's been... strained lately. Palace tensions affect everyone.",
      choices = {
        { text = "What kind of tensions?", next = "palace_tensions" },
        { text = "I'm prepared for any challenges.", next = "loyal_servant" },
        { text = "Could I speak with the Queen personally?", next = "queen_interview" },
        { text = "Maybe kitchen work would be simpler.", next = "kitchen_reconsider" }
      }
    },

    discretion_talk = {
      speaker = "Head Chamberlain",
      text = "Palace servants see much but speak little. The King has... varied interests, the Queen has her own concerns, and wise servants learn when to be blind and deaf.",
      choices = {
        { text = "I understand completely.", next = "wise_servant" },
        { text = "That sounds like blackmail material.", next = "opportunist_path" },
        { text = "What if I witnessed something truly wrong?", next = "moral_dilemma" },
        { text = "I prefer honest work elsewhere.", next = "leave_palace" }
      }
    },

    affair_knowledge = {
      speaker = "Head Chamberlain",
      text = "*looks around nervously* Everyone knows, but no one speaks of it. The question is - what do you intend to do with this knowledge?",
      choices = {
        { text = "I thought the Queen should know.", next = "tell_queen" },
        { text = "Perhaps Lady Evelyn could use a warning.", next = "warn_evelyn" },
        { text = "This information has value...", next = "blackmail_consideration" },
        { text = "I'll keep it to myself.", next = "silent_keeper" }
      }
    },

    queen_secrets = {
      speaker = "Head Chamberlain",
      text = "The Queen's secrets? *pauses* Be very careful. Her Majesty has powerful allies and a long memory. What exactly have you heard?",
      choices = {
        { text = "She meets with foreign ambassadors secretly.", next = "queen_diplomacy" },
        { text = "There are rumors about her own... companionship.", next = "queen_affair" },
        { text = "She's been moving gold from the treasury.", next = "queen_money" },
        { text = "Perhaps I misheard the rumors.", next = "backtrack_queen" }
      }
    },

    interrupt_king = {
      speaker = "King Edward",
      text = "*visibly annoyed* This had better be urgent! I was in the middle of... important discussions with Lady Evelyn about court poetry.",
      choices = {
        { text = "My sincere apologies, Your Majesty. Bandits threaten our borders.", next = "king_bandits" },
        { text = "I can return later if Your Majesty prefers.", next = "king_dismissal" },
        { text = "Lady Evelyn might find military strategy interesting too.", next = "include_evelyn" },
        { text = "The Queen suggested I speak with you immediately.", next = "blame_queen" }
      }
    },

    queen_feelings = {
      speaker = "Head Chamberlain",
      text = "The Queen is... resigned, I think. She's thrown herself into statecraft while the King pursues his interests. Some say she's planning something, others say she's simply enduring.",
      choices = {
        { text = "Planning something? Like what?", next = "queen_plans" },
        { text = "That's heartbreaking. Does she have allies?", next = "queen_allies" },
        { text = "Maybe I could help somehow.", next = "help_queen" },
        { text = "Royal marriages are complicated.", next = "royal_politics" }
      }
    },

    evelyn_nature = {
      speaker = "Head Chamberlain",
      text = "Lady Evelyn is clever - perhaps too clever. She arrived as the Queen's cousin but quickly charmed the King. Whether by design or circumstance, she's now the most influential woman at court.",
      choices = {
        { text = "Could she be manipulating the King?", next = "evelyn_manipulation" },
        { text = "What does she want from all this?", next = "evelyn_goals" },
        { text = "Has she made enemies?", next = "evelyn_enemies" },
        { text = "Perhaps she's just caught in circumstances.", next = "evelyn_innocent" }
      }
    },

    queen_bandits = {
      speaker = "Queen Isabella",
      text = "Bandits again? This is the third report this month. The King seems... distracted from military matters lately. We'll need to handle this ourselves.",
      choices = {
        { text = "I could carry messages to rally the border lords.", next = "messenger_role" },
        { text = "Should we not consult with His Majesty first?", next = "protocol_question" },
        { text = "You seem very capable in these matters, Your Majesty.", next = "praise_queen" },
        { text = "What resources do we have available?", next = "military_resources" }
      }
    },

    servant_opinions = {
      speaker = "Servant Thomas",
      text = "The servants are divided. Some pity the Queen, others think Lady Evelyn's a social climber. Cook says the King's always been weak for a pretty face. What do you think?",
      choices = {
        { text = "I think it's not our place to judge.", next = "neutral_wisdom" },
        { text = "The Queen deserves better than this.", next = "queen_sympathy" },
        { text = "Lady Evelyn might not be entirely to blame.", next = "evelyn_defense" },
        { text = "Kings and queens have different rules than us.", next = "royal_acceptance" }
      }
    },

    tell_queen = {
      speaker = "Head Chamberlain",
      text = "Tell the Queen what she already knows? *sighs* She's not blind, friend. But confronting it directly might force her hand in ways none of us want.",
      choices = {
        { text = "She deserves support from her people.", next = "support_queen" },
        { text = "Maybe she needs someone to confide in.", next = "confidant_offer" },
        { text = "You're right, I shouldn't interfere.", next = "step_back" },
        { text = "What if I spoke to Lady Evelyn instead?", next = "approach_evelyn" }
      }
    },

    king_bandits = {
      speaker = "King Edward",
      text = "Bandits? Can't the Queen handle such matters? She's become quite... capable in my absence. Unless this threatens the capital directly?",
      choices = {
        { text = "They're disrupting tax collection, Your Majesty.", next = "tax_threat" },
        { text = "The Queen did send me to you specifically.", next = "queen_insistence" },
        { text = "Perhaps a joint response would be most effective?", next = "joint_response" },
        { text = "You're right, Your Majesty. I'll return to the Queen.", next = "return_queen" }
      }
    },

    queen_plans = {
      speaker = "Head Chamberlain",
      text = "Some say she's been writing letters to her family's allies. Others whisper about separate royal progress tours. But these are just whispers, mind you.",
      choices = {
        { text = "Separate tours? That sounds like preparation for something.", next = "separation_prep" },
        { text = "Her family allies could mean political support.", next = "political_support" },
        { text = "I should stay out of royal politics.", next = "avoid_politics" },
        { text = "Maybe I could learn more by serving her directly.", next = "serve_queen" }
      }
    },

    evelyn_manipulation = {
      speaker = "Head Chamberlain",
      text = "The King has been... different since her arrival. Less interested in council meetings, more focused on poetry and music. Whether that's manipulation or genuine affection, who can say?",
      choices = {
        { text = "The kingdom suffers when kings are distracted.", next = "kingdom_concerns" },
        { text = "Maybe she genuinely cares for him.", next = "genuine_love" },
        { text = "Someone should warn the King.", next = "warn_king" },
        { text = "This is getting too complicated for me.", next = "complications" }
      }
    },

    messenger_role = {
      speaker = "Queen Isabella",
      text = "Yes, that would be most helpful. You'd carry my seal and speak with my authority. The border lords respect strength - show them I'm prepared to act decisively.",
      choices = {
        { text = "I'm honored by your trust, Your Majesty.", next = "royal_mission" },
        { text = "What message should I convey about the King's support?", next = "king_support_question" },
        { text = "Should I mention the palace situation at all?", next = "palace_situation" },
        { text = "I'll need provisions and an escort.", next = "mission_logistics" }
      }
    },

    support_queen = {
      speaker = "Queen Isabella",
      text = "*appears unexpectedly* I heard my name mentioned. Yes, I could use support, but I need allies who understand discretion and loyalty. Are you such a person?",
      choices = {
        { text = "Absolutely, Your Majesty. Command me.", next = "queen_loyal" },
        { text = "I believe in justice and proper order.", next = "order_supporter" },
        { text = "What kind of support do you need?", next = "support_details" },
        { text = "I... I didn't expect you to appear, Your Majesty.", next = "surprised_response" }
      }
    },

    approach_evelyn = {
      speaker = "Lady Evelyn",
      text = "*silk dress rustling as she approaches* I couldn't help but overhear. You wish to speak with me? How... interesting. Few dare approach the King's current fascination directly.",
      choices = {
        { text = "I wanted to understand your perspective on the court situation.", next = "evelyn_perspective" },
        { text = "Some worry about your influence on His Majesty.", next = "influence_concern" },
        { text = "I thought you might want to know what people are saying.", next = "gossip_warning" },
        { text = "My apologies, I didn't mean to presume.", next = "respectful_retreat" }
      }
    },

    tax_threat = {
      speaker = "King Edward",
      text = "Ah, taxes! Now that affects the royal treasury. Very well, we'll need to act. But can't we handle this without disrupting my... current studies with Lady Evelyn?",
      choices = {
        { text = "The Queen could manage the military response.", next = "queen_military_suggestion" },
        { text = "Your personal involvement would inspire the troops.", next = "king_inspiration" },
        { text = "Perhaps Lady Evelyn has insights on strategy?", next = "evelyn_strategy" },
        { text = "A quick decisive action now prevents larger problems.", next = "decisive_action" }
      }
    },

    royal_mission = {
      speaker = "Queen Isabella",
      text = "Good. Take this ring as proof of my authority. Tell the border lords that Queen Isabella remembers her allies and expects their swift action against these bandits.",
      choices = {
        { text = "What if they ask about the King's position?", next = "king_position" },
        { text = "Should I coordinate with any existing military forces?", next = "military_coordination" },
        { text = "I'll return with news of their response.", next = "mission_accepted" },
        { text = "Your Majesty, may I ask about your long-term plans?", next = "long_term_plans" }
      }
    },

    evelyn_perspective = {
      speaker = "Lady Evelyn",
      text = "My perspective? I came to court as the Queen's cousin and found myself caught between royal affections and court politics. The King is kind, the Queen is wise, and I... I try to navigate carefully.",
      choices = {
        { text = "That sounds like a difficult position.", next = "sympathetic_response" },
        { text = "Do you have feelings for the King?", next = "feelings_question" },
        { text = "What about your relationship with the Queen?", next = "queen_relationship" },
        { text = "Are you planning to stay at court long-term?", next = "future_plans" }
      }
    },

    queen_loyal = {
      speaker = "Queen Isabella",
      text = "Then prove it. I need someone to carry sensitive messages to my family. Someone who won't be suspected of serving my interests over the King's.",
      choices = {
        { text = "I'm ready to serve, Your Majesty.", next = "secret_mission" },
        { text = "What kind of messages?", next = "message_inquiry" },
        { text = "This sounds dangerous for all involved.", next = "danger_concern" },
        { text = "Wouldn't it be better to work with the King?", next = "unity_suggestion" }
      }
    },

    secret_mission = {
      speaker = "Queen Isabella",
      text = "Excellent. You'll travel to my brother Duke Marcus with letters discussing... family matters. He'll understand their true meaning. Can you leave tonight?",
      choices = {
        { text = "Yes, Your Majesty. Tonight works perfectly.", next = "night_departure" },
        { text = "What should I say if questioned about my journey?", next = "cover_story" },
        { text = "Should I expect any resistance or danger?", next = "mission_dangers" },
        { text = "What happens when I return?", next = "return_plans" }
      }
    },

    sympathetic_response = {
      speaker = "Lady Evelyn",
      text = "Thank you for understanding. Few do. The Queen maintains her dignity, but I see the pain in her eyes. The King seeks escape from royal duties. And I... I'm trapped between them both.",
      choices = {
        { text = "Could you step back from the situation?", next = "step_back_suggestion" },
        { text = "Have you considered talking honestly with the Queen?", next = "honest_conversation" },
        { text = "What would make you happiest in all this?", next = "happiness_question" },
        { text = "Perhaps time will resolve these complications.", next = "time_heals" }
      }
    },

    feelings_question = {
      speaker = "Lady Evelyn",
      text = "*pauses thoughtfully* The King is charming and kind, but he's also married to a remarkable woman. My feelings are... complicated. I care for them both, which makes this situation torturous.",
      choices = {
        { text = "That's an impossible situation.", next = "impossible_situation" },
        { text = "Have you told either of them this?", next = "confession_question" },
        { text = "Maybe distance would help clarify things.", next = "distance_suggestion" },
        { text = "The heart wants what it wants.", next = "heart_wants" }
      }
    },

    night_departure = {
      speaker = "Queen Isabella",
      text = "Perfect. Meet me in the rose garden at midnight. Tell no one - not even the servants you trust. The future of the kingdom may depend on this discretion.",
      choices = {
        { text = "I understand the gravity, Your Majesty.", next = "grave_mission" },
        { text = "The kingdom? What exactly is happening?", next = "kingdom_revelation" },
        { text = "I won't fail you.", next = "promise_success" },
        { text = "What if the King discovers this?", next = "discovery_fear" }
      }
    },

    step_back_suggestion = {
      speaker = "Lady Evelyn",
      text = "I've considered it. But leaving now might hurt the King deeply, and it would certainly damage my relationship with the Queen - she brought me here, after all.",
      choices = {
        { text = "Sometimes temporary pain prevents greater suffering.", next = "wisdom_advice" },
        { text = "What if you explained your position to both of them?", next = "explain_position" },
        { text = "You're in an impossible situation.", next = "acknowledge_difficulty" },
        { text = "Perhaps a solution will present itself.", next = "hopeful_waiting" }
      }
    },

    kingdom_revelation = {
      speaker = "Queen Isabella",
      text = "The King's distraction comes at a dangerous time. Foreign ambassadors probe our weaknesses, border lords question royal authority, and the treasury... well, certain expenditures have been excessive.",
      choices = {
        { text = "What kind of expenditures?", next = "financial_inquiry" },
        { text = "Are we facing external threats?", next = "external_threats" },
        { text = "The border lords mentioned earlier - they're losing faith?", next = "loyalty_question" },
        { text = "This makes my mission even more critical.", next = "critical_mission" }
      }
    },

    explain_position = {
      speaker = "Lady Evelyn",
      text = "An honest conversation with both? That's... actually not a terrible idea. Though it could explode spectacularly. Would you be willing to help arrange such a meeting?",
      choices = {
        { text = "I could try to facilitate that conversation.", next = "facilitate_meeting" },
        { text = "That's extremely risky for everyone involved.", next = "risky_honesty" },
        { text = "Maybe start with just the Queen first.", next = "queen_first" },
        { text = "You should consider the consequences carefully.", next = "consider_consequences" }
      }
    },

    facilitate_meeting = {
      speaker = "Lady Evelyn",
      text = "If you're serious about this, we'd need to be very careful. Perhaps during the harvest festival when emotions run high anyway? It might provide cover for difficult conversations.",
      choices = {
        { text = "The festival could work perfectly.", next = "festival_plan" },
        { text = "What outcome are you hoping for?", next = "desired_outcome" },
        { text = "I'll speak with the Queen first to gauge her thoughts.", next = "queen_gauge" },
        { text = "This is getting more complex than I expected.", next = "complexity_realization" }
      }
    },

    external_threats = {
      speaker = "Queen Isabella",
      text = "The northern kingdoms watch our internal conflicts with interest. A divided royal house invites aggression. My family's support becomes crucial if we're to maintain strength.",
      choices = {
        { text = "Civil war would be catastrophic.", next = "civil_war_fear" },
        { text = "Perhaps reconciliation is still possible.", next = "reconciliation_hope" },
        { text = "Your family could provide military support?", next = "military_support" },
        { text = "The kingdom's stability depends on this mission.", next = "stability_mission" }
      }
    },

    festival_plan = {
      speaker = "Lady Evelyn",
      text = "Yes! During the feast, when wine flows and guards are distracted. We could arrange for all three of us to meet in the Queen's private chambers. But you'd need to ensure we're not interrupted.",
      choices = {
        { text = "I can arrange for privacy during the feast.", next = "privacy_arrangement" },
        { text = "What will you say to them?", next = "conversation_plan" },
        { text = "Are you prepared for any possible outcome?", next = "outcome_preparation" },
        { text = "This could change everything at court.", next = "court_change" }
      }
    },

    civil_war_fear = {
      speaker = "Queen Isabella",
      text = "Exactly. Brother against brother, noble house against noble house. The King doesn't see it, but his personal choices have political consequences. That's why your mission is so vital.",
      choices = {
        { text = "I'll make sure Duke Marcus understands the urgency.", next = "urgent_message" },
        { text = "Is there no way to make the King see reason?", next = "reason_king" },
        { text = "What role would Lady Evelyn play in a conflict?", next = "evelyn_role" },
        { text = "The kingdom must be preserved above all.", next = "kingdom_first" }
      }
    },

    privacy_arrangement = {
      speaker = "Narrator",
      text = "You've committed to facilitating a dangerous conversation between three people whose fates are intertwined with the kingdom's future. The harvest festival approaches, and with it, a moment that could heal or destroy the royal family.",
      choices = {
        { text = "Prepare carefully for the festival meeting.", next = "festival_preparation" },
        { text = "Try to gauge each person's true intentions first.", next = "intention_investigation" },
        { text = "Consider backing out - this is too dangerous.", next = "dangerous_retreat" },
        { text = "Seek advice from the Head Chamberlain.", next = "chamberlain_advice" }
      }
    },

    urgent_message = {
      speaker = "Queen Isabella",
      text = "Tell my brother that Isabella remembers her duty to crown and kingdom, but also to family honor. He'll understand what preparations may be necessary.",
      choices = {
        { text = "Military preparations?", next = "military_preparations" },
        { text = "I'll convey your exact words.", next = "exact_words" },
        { text = "This sounds like preparation for war.", next = "war_preparation" },
        { text = "Perhaps there's still hope for peace.", next = "peace_hope" }
      }
    },

    -- Multiple ending branches
    festival_preparation = {
      speaker = "Narrator",
      text = "The harvest festival arrives with great pageantry. You've arranged for the private meeting, but as the appointed hour approaches, you realize the weight of what you've set in motion.",
      choices = {
        { text = "Go through with the meeting as planned.", next = "honest_confrontation" },
        { text = "Try to postpone until tensions cool.", next = "postpone_meeting" },
        { text = "Warn one party about the others' intentions.", next = "selective_warning" },
        { text = "Let events unfold naturally without interference.", next = "natural_conclusion" }
      }
    },

    honest_confrontation = {
      speaker = "Narrator",
      text = "The three royals meet in tense honesty. Tears, accusations, and revelations flow like wine. When dawn breaks, the kingdom has either found healing or fractured beyond repair. Your role in history is secured.",
      choices = nil
    },

    war_preparation = {
      speaker = "Narrator",
      text = "You carry messages that may lead to civil war, but also to a stronger, more unified kingdom. Duke Marcus receives the Queen's words with grim understanding, and mobilization begins quietly.",
      choices = nil
    },

    natural_conclusion = {
      speaker = "Narrator",
      text = "Sometimes wisdom lies in knowing when not to act. The royal triangle continues its dance, but you've learned that even servants and messengers can hold the fate of kingdoms in their hands.",
      choices = nil
    },

    dangerous_retreat = {
      speaker = "Narrator",
      text = "You realize that some games are too dangerous for commoners to play. You quietly withdraw from court politics, perhaps wiser for having glimpsed the true cost of power.",
      choices = nil
    },

    peace_hope = {
      speaker = "Narrator",
      text = "Your words of hope plant seeds in the Queen's heart. She decides to try one final honest conversation with the King, and your faith in reconciliation may yet prove prophetic.",
      choices = nil
    }
  }
}

return dialogues