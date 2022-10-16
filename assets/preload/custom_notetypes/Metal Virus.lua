
function goodNoteHit(id, noteData, noteType, isSustainNote)
    if noteType == 'MetalVirus' then
		health=health - 10000
		characterPlayAnim('boyfriend', 'hurt', true);
		
    end
end

function onTimerCompleted(tag)
    if tag=="HT" then
        health=health - noteTime
        noteTime=noteTime+0.25
    end
end
  

function onGameOver()
    playSound('ex_death', 0.8);
end

function onCreate()
	noteTime = -0.5
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