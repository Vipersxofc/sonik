function onCreate()
    makeLuaSprite('', '', -690, -375)
    scaleObject('', 0.5, 0.5)
    setScrollFactor('', 0.65, 0.65)
    addLuaSprite('', false)

    makeLuaSprite('', '', -690, -400)
    scaleObject('', 0.5, 0.5)
    setScrollFactor('', 0.8, 0.8)
    addLuaSprite('', false)

    makeLuaSprite('foreground', 'bgnight', -775, -400)
    scaleObject('foreground', 0.5, 0.5)
    addLuaSprite('foreground', false)

    makeAnimatedLuaSprite('emeralds', 'emeralds', -435, -665)
    addAnimationByPrefix('emeralds', 'idle', 'Spin instance 1', 24, true)
    scaleObject('emeralds', 1.5, 1.5)
    
    addLuaSprite('emeralds', false)

    makeAnimatedLuaSprite('speakers', 'speakers', 50, 200)
    addAnimationByPrefix('speakers', 'idle', 'speeeks', 24, true)
    scaleObject('speakers', 0.55, 0.55)
    
    addLuaSprite('speakers', false)

    makeLuaSprite('bgs', '', -905, -540);
    makeGraphic('bgs', 4500, 4500,'000000')
    addLuaSprite('bgs', false);
    setProperty('bgs.alpha', 0)

    allowZoom = true
end

function onUpdate(elapsed)
    if (allowZoom == true) then
        if (mustHitSection) then
            setProperty('defaultCamZoom', 1)
        else
            setProperty('defaultCamZoom', 0.85)
        end
    end
end

function onEvent(name, v1, v2)
    if (name == 'DarkMoment') then
        if (v1 ~= '') then
            doTweenAlpha('', '', 0.65, tonumber(v2))
            allowZoom = false
        else
            doTweenAlpha('', '', 0, tonumber(v2))
            allowZoom = true
        end
    end
end






























