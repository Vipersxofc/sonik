function onCreatePost()
    makeLuaSprite("you","event/you",0,0)
    doTweenAlpha("you","you",0,0.01)
    addLuaSprite("you",true)
    setObjectCamera("you","camOther")
    scaleObject("you",0.5,0.5)
    screenCenter("you","x")

    if downscroll == false then 
        doTweenY("you2be","you",620,0.01)
    else
        doTweenY("you3","you",20,0.01)
    end
end

function onSongStart()
    doTweenAlpha("you","you",100,5,"smootherStepInOut")
    runTimer("youcum",6.75)
end

function onTimerCompleted(tag)
    if tag == "youcum" then
        doTweenAlpha("oknerd","you",0,1.5)
    end
end
