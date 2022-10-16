local light = 'false'
local bpm = 4

function onCreatePost()
    makeLuaSprite('lightBlue', 'ui/bpmLight', 0, 0)
    setProperty('lightBlue.alpha', 0)
    setObjectCamera('lightBlue', 'camHUD')
    setBlendMode('lightBlue', 'add')

    makeLuaSprite('blueBG', '', 0, 0)
    makeGraphic('blueBG', 1280, 720, '5ab3b3')
    setObjectCamera('blueBG', 'camHUD')
    setProperty('blueBG.alpha', 0)
end

function onUpdate()
    doTweenAlpha('tag', 'lightBlue', 0, 0.5)
    doTweenAlpha('tag2', 'blueBG', 0, 0.5)
end

function onEvent(name, v1, v2)
    if (name == 'Light') then
        light = v1
        if (light ~= '' or light ~= false) then
            bpm = tonumber(v2)

            addLuaSprite('blueBG', false)
            addLuaSprite('lightBlue', false)
        else
            bpm = nil

            removeLuaSprite('blueBG', false)
            removeLuaSprite('lightBlue', false)
        end
    end
end

function onBeatHit()
    if (curBeat % bpm == 0) then
        setProperty('lightBlue.alpha', 0.65)
        setProperty('blueBG.alpha', 0.2)
    end
end
