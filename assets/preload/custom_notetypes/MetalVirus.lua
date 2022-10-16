
function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'MetalVirus' then
		setProperty('health', getProperty('health') - 0.0)
		runTimer("HT", 0.25, 8)
		cameraShake("game", 0.02, 0.1)
		if DLN==2 then
			addLuaText("Oops")
			runTimer("OD", 0.2)
		elseif DLN==1 then
			addLuaText("Yikes")
			runTimer("YD", 0.2)
		elseif DLN==0 then
			addLuaText("Ouch")
			runTimer("OD2", 0.2)
		end
    end
end

function onTimerCompleted(tag)
    if tag=="HT" then
        setProperty('health', getProperty('health') + noteTime)
        noteTime=noteTime-0.005
	elseif tag == "DLC" then
		if DLN==2 then
			DLN=0
		elseif DLN==1 then
			DLN=DLN+1	
		elseif DLN==0 then	
			DLN=DLN+1
		end
	elseif tag=="OD" then
		DLN=0
		removeLuaText("Oops", false)
	elseif tag=="YD" then
		removeLuaText("Yikes", false)
	elseif tag=="OD2" then
		removeLuaText("Ouch", false)
	end
end
  

function onGameOver()
    playSound('ex_death', 0.8);
end

function onCreate()
	DLN = 0
	runTimer("DLC", 0.3, 1000000);
	noteTime = -0.05
	makeLuaText("Ouch", "Ouch.", 300, 525, 305)
	setTextSize("Ouch", 100)
	makeLuaText("Yikes", "Yikes.", 1000, 175, 305)
	setTextSize("Yikes", 100)
	makeLuaText("Oops", "Oops.", 1000, 175, 305)
	setTextSize("Oops", 100)
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'MetalVirus' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Metal virus'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashDisabled', true);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == true then --Lets Opponent's instakill notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			end
		end
	end
end
