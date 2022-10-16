function onCreate()
    makeLuaSprite("B","event/black",0,0)
    setObjectCamera("B","hud")
    removeLuaSprite('B', false)
end

function onEvent(name,value1,value2)
    if name == "Blackout" then
        addLuaSprite("B",true) 
        runTimer("BEnd",value1)

        if value2 == "true" then
            doTweenX("BFx","boyfriend",325,0.01)
            doTweenY("BFy","boyfriend",75,0.01)
    
            removeLuaSprite("scanlines", false)
            if (lowQuality == true) then
                removeLuaSprite("pix_full", false)
            else
                removePixelStage()
            end
    
            if getPropertyFromClass("ClientPrefs","hideCard")== false then
                addLuaSprite("UI2", true)
                if cardIn == false then
                    setProperty('UI2.alpha', 100) 
                else
                    setProperty('UI2.alpha', 0)
                end
                addLuaSprite("UIe", true)
            end
    
            addLuaText('ringCounter')
            addLuaText('scoreTxt2')
            addLuaText('accTxt')
            addLuaSprite("Emblem", true)
    
            setObjectCamera("Emblem", "hud")
            addLuaText('rankTxt')
    
            addLuaSprite('rankin', true)
            setObjectCamera('rankin', 'camHUD')
            setProperty('rankin.antialiasing', false)
    
            setTextSize("ringCounter", 33.75)
            setTextSize("scoreTxt2", 33.75)
            setTextSize("accTxt", 33.75)
    
            addLuaSprite('flowers', true)
        end
    end
end

function removePixelStage()
    removeLuaSprite('pix_sky', false)
    removeLuaSprite('pix_mt', false)
    removeLuaSprite('pix_h', false)
    removeLuaSprite('pix_tr', false)
    removeLuaSprite('pix_gr', false)
    removeLuaSprite('pix_pl', false)
    removeLuaSprite('pix_fl', false)
end

function onTimerCompleted()
    removeLuaSprite("B",false)
end

