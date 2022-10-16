
function onCreate()
    makeLuaSprite("white","event/white")
    doTweenAlpha("white","white",0,0.01)
end

function onEvent(name,value1) 
    if name == "fadeInWhite" then
        if value1 == "yes" then
            noteTweenY("1",0,-300,0.75,"smoothStepInOut")
            noteTweenY("2",1,-300,0.75,"smoothStepInOut")
            noteTweenY("3",2,-300,0.75,"smoothStepInOut")
            noteTweenY("4",3,-300,0.75,"smoothStepInOut")
            noteTweenY("5",4,-300,0.75,"smoothStepInOut")
            noteTweenY("6",5,-300,0.75,"smoothStepInOut")
            noteTweenY("7",6,-300,0.75,"smoothStepInOut")
            noteTweenY("8",7,-300,0.75,"smoothStepInOut")

            addLuaSprite("back",true)
            addLuaSprite("ring",true)
            addLuaSprite("shake",true)
            addLuaSprite("banner",true) 
            addLuaSprite("tw",true)

            doTweenAlpha("bac1k","back",0,0.1)
            doTweenAlpha("romg","ring",0,0.1)
            doTweenAlpha("shakeaaa","shake",0,0.1)
            doTweenAlpha("banbber","banner",0,0.1)
            doTweenAlpha("tw1","tw", 0,0.1)

            setObjectCamera("back","camOther")
            setObjectCamera("ring","camOther")
            setObjectCamera("shake","camOther")
            setObjectCamera("banner","camOther")
            setObjectCamera("tw","camOther")

            
            addLuaSprite("white",true) 
            setObjectOrder("white",14)
            setObjectCamera("white","camHUD")
            doTweenAlpha("kill yourself","white",4,4)
        end
    end
end

function onTweenCompleted(tag)
    if (tag == 'white3') then
        removeLuaSprite("white")
    end
end