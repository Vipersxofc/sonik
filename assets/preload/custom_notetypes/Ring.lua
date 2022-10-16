function onCreate()
    for j = 0, getProperty('unspawnNotes.length')-1 do
        if (getPropertyFromGroup('unspawnNotes', j, 'noteType') == 'Ring') then
            setPropertyFromGroup('unspawnNotes', j, 'texture', 'noteSkins/NOTE_ring')

            setPropertyFromGroup('unspawnNotes', j, 'noAnimation', true)
            setPropertyFromGroup('unspawnNotes', j, 'ignoreNote', true)
        end
    end

    precacheSound('Ring')
end

function onUpdate()
    for j = 0, getProperty('unspawnNotes.length')-1 do
        if (getPropertyFromGroup('unspawnNotes', j, 'noteType') == 'Ring') then
            setPropertyFromGroup('unspawnNotes', j, 'offsetX', 6)

            setPropertyFromGroup('unspawnNotes', j, 'scale.x', 0.75)
            setPropertyFromGroup('unspawnNotes', j, 'scale.y', 0.75)
        end
    end
end

function goodNoteHit(id, dir, type, sus)
    if (type == 'Ring') then
        playSound('Ring', 0.725)
    end
end


