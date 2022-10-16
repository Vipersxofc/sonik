local funnyY = 390

function onEvent(name)
    if name == "UIindicator" then
        if songName ~= "End-Goal" then
            setProperty("fucker.visible", true)
            doTweenY("fucker","fucker",funnyY,0.2,"smoothStepInOut")
            runTimer("funny!!",5)   
        end
    end       
end

function onCreate()
    if downscroll == true then
        funnyY = 450
        makeLuaSprite("fucker","ui/tabIndicatordown",0,500)
    else
        makeLuaSprite("fucker","ui/tabIndicator",200,500)
    end
    setObjectCamera("fucker",'camHUD')
    scaleObject("fucker",1,1)
    addLuaSprite("fucker",true)
    setProperty("fucker.visible", false)
end

function onUpdate()
    if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.TAB') then
        removeLuaSprite("fucker",false)
    end
end

function onTimerCompleted(tag)
    if tag == "funny!!" then
        doTweenY("where he goin", "fucker", 500, 1, "smoothStepInOut")
        doTweenAlpha("he going away damn", "fucker",0, 1.5, "smoothStepInOut")
    end
end