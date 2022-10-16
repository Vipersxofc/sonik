

function onCreate()
    makeLuaSprite("b","bgmetal",0,0)

    makeLuaSprite("s", "sign",0,0)
    setScrollFactor("s",0.9,0.9)

    addLuaSprite("",false)
    addLuaSprite("",false)
    addLuaSprite("",false)
    addLuaSprite("",false)
    addLuaSprite("",false)
    addLuaSprite("",false)
    addLuaSprite("b",false)
    addLuaSprite("s",false)
    addLuaSprite("",true)
    addLuaSprite('',true)

    doTweenY("sup","s",50,2,"smootherStepInOut")

end

function onTweenCompleted(tag)
    if tag == "sup" then
        doTweenY("sdown","s",0,2,"smootherStepInOut")
    elseif tag == "sdown" then
        doTweenY("sup","s",50,2,"smootherStepInOut")
    end
end
