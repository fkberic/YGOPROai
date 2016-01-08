function DinomistStartup (deck)
  AI.Chat ("Dinomist AI v1.0.1")
  AI.Chat ("FKB_Eric")

  deck.Init                 = DinomistInit
  deck.Card                 = DinomistCard
  deck.Chain                = DinomistChain
  deck.EffectYesNo          = DinomistEffectYesNo
  deck.Position             = DinomistPosition
  deck.ActivateBlacklist    = DinomistActivateBlacklist
  deck.SummonBlacklist      = DinomistSummonBlacklist
  deck.PriorityList         = DinomistPriorityList
end

DinomistID = 63251695 -- Rex
DECK_Dinomist = NewDeck ("Dinomist", DinomistID, DinomistStartup)

DinomistActivateBlacklist = {
  63251695, -- Rex
  37752990, -- Ceratops
  00368382, -- Brachion
  01580833, -- Stegosaurer
  
  23171610, -- Limiter Removal
  43898403, -- Twin Twister
  73628505, -- Terraforming
  31222701, -- Wavering Eyes
}

DinomistSummonBlacklist = {
  63251695, -- Rex
  37752990, -- Ceratops
  00368382, -- Brachion
  01580833, -- Stegosaurer
  24610207, -- Star Drawing
  94693857, -- 001
  
  91949988, -- Thunder Charger
  10443957, -- Infinity
  73964868, -- Pleiades
  29669359, -- Volcasaurus
  58069384, -- Nova
  16195942, -- DRD
  48739166, -- 101
  82633039, -- Castel
  21044178, -- Dweller
  08561192, -- Leo
  52687916, -- Trish
  07391448, -- Goyo
  36898537, -- Horus
  33198837, -- Beast
  88033975  -- Armades
}

DinomistPriorityList = {                      
  [63251695] = {1, 1, 4, 2, 1, 1, 1, 1, 1, 1, MRexCond},   -- Rex
  [37752990] = {2, 2, 1, 1, 1, 1, 1, 1, 1, 1, MCeraCond},  -- Ceratops
  [00368382] = {3, 2, 1, 1, 1, 1, 1, 1, 1, 1, MBrachCond}, -- Brachion 
  [64973287] = {5, 1, 3, 1, 1, 1, 1, 1, 1, 1}, -- Pteran
  [38988538] = {6, 1, 3, 1, 1, 1, 1, 1, 1, 1}, -- Plesios
  [01580833] = {4, 2, 1, 1, 1, 1, 1, 1, 1, 1, MStegCond},  -- Stegosaurer
  [24610207] = {1, 1, 2, 1, 1, 1, 1, 1, 1, 1, MStarCond},  -- Star Drawing
  [94693857] = {1, 3, 2, 1, 2, 1, 1, 1, 1, 1, MBotCond},    -- 001
  
  [12580477] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Raigeki
  [23171610] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, SLimCond},   -- Limiter Removal
  [43898403] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, STwinCond},  -- Twin Twister
  [73628505] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Terraforming
  [31222701] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, SWavCond},   -- Wavering Eyes
  [77116346] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Dinomist Charge
  [41128647] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Dynamic Powerload
  
  [41554273] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Dinomist Rush
  [92512625] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Scolding
  [84749824] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Warning
  
  [91949988] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Thunder Charger
  [10443957] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Infinity
  [73964868] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Pleiades
  [29669359] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Volcasaurus
  [58069384] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Nova
  [16195942] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- DRD
  [48739166] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- 101
  [82633039] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Castel
  [21044178] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Dweller
  [08561192] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Leo
  [52687916] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Trish
  [07391448] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Goyo
  [36898537] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Horus
  [33198837] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Beast
  [88033975] = {1, 1, 1, 1, 1, 1, 1, 1, 1, 1}, -- Armades

} 
function DinomistInit(cards)
  local Act = cards.activatable_cards
  local Sum = cards.summonable_cards
  local SpSum = cards.spsummonable_cards
  local Rep = cards.repositionable_cards
  local SetMon = cards.monster_setable_cards
  local SetST = cards.st_setable_cards
  
  if HasID (Act, 12580477) then -- Raigeki
    return Activate()
  end
  if HasID (Act, 73628505) then -- Terraforming
    return Activate()
  end
  if HasID (Act, 77116346) then -- Dinomist Charge
    return Activate()
  end
  if HasID (Act, 41128647) then -- Dynamic Powerload
    return Activate()
  end
 
  return nil
end

function DinomistCard(cards,min,max,id,c)
  if id = 63251695] then
    return MRexCond (cards)
  end
  if id = 37752990] then
    return MCeraCond (cards)
  end
  if id = 00368382] then
    return MBrachCond (cards)
  end
  if id = 01580833] then
    return MStegCond (cards)
  end  
  if id = 24610207] then
    return MStarCond (cards)
  end
  if id = 94693857] then
    return MBotCond (cards)
  end  
  if id = 23171610] then
    return SLimCond (cards)
  end
  if id = 43898403] then
    return STwinCond (cards)
  end  
  if id = 31222701] then
    return SWavCond (cards)
  end
  if id = 41554273] then
    return TRushCond (cards)
  end
  return nil
end

DinomistAtt={
  63251695, -- Rex
  37752990, -- Ceratops
  00368382, -- Brachion
  64973287, -- Pteran
  38988538, -- Plesios
  01580833, -- Stegosaurer
  24610207, -- Star Drawing
  94693857, -- 001
}

DinomistDef={
}

function DinomistPosition(id,available)
  result = nil
  for i=1,#DinomistAtt do
    if DinomistAtt[i]==id 
    then 
      result=POS_FACEUP_ATTACK
    end
  end
  for i=1,#DinomistDef do
    if DinomistDef[i]==id 
    then 
      result=POS_FACEUP_DEFENCE 
    end
  end
  return result
end

function MRexCond (loc, c)
  if loc == PRIO_TOHAND then
    return not HasID (ATHand(), c.id)
  end
  if loc == PRIO_TOFIELD then
    return DestroyCheck (OppMon()) > 0
	or
	#Oppmon () == 0 SpinCheck (OppHand())
  end
end

function MCeraCond (loc, c)
  if loc == PRIO_TOHAND then
    return PendCheck ()
  end
  if loc == PRIO_TOFIELD then
    return DestroyCheck (MyMon()) > 0
  end
  if loc == PRIO_TOPEND then
    return Activate()
  end
end

function MBrachCond (loc, c)
  if loc == PRIO_TOHAND then
    return PendCheck ()
  end

  if loc == PRIO_TOPEND then
    return Activate()
  end
end

function MStegCond (loc, c)
  if loc == PRIO_TOHAND then
    return PendCheck ()
  end

  if loc == PRIO_TOPEND then
    return Activate()
  end
end

function MStarCond (loc, c)
  if loc == PRIO_TOHAND then
    return HandCheck (MyHand())
  end
  if loc == PRIO_TOFIELD then
    return FieldCheck (myField())
  end
end

function MBotCond (loc, c)
  if loc == PRIO_TOFIELD then
    return FieldCheck (myField())
  end
  if loc == PRIO_TOGRAVE then
    return FieldCheck (myField())
  end
end

function SLimCond (loc, c)
  if loc == PRIO_TOHAND or loc == PRIO_TOFIELD then
    if myField().monster == EMPTY or myField.monster == 1
	  return false
	else 
	  return true
	end
  end
end

function STwinCond (loc, c)
  if loc == PRIO_TOHAND or loc == PRIO_TOFIELD then
    if oppField.spell == EMPTY or oppField.spell == 101
	  return false
	else
	  if myHand() == 1 and contains (
	    63251695, 37752990, 00368382,
        64973287, 38988538, 01580833)
        return false
      else
        return true
    end
  end
end

function SWavCond (loc, c)
  if loc == PRIO_TOHAND or loc == PRIO_TOFIELD then
    if oppField.pend > 2 then
	  return true
	end
	if myField.pend > 2 then
	  return true
	end
  end
  return false
end