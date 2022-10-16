local ofs = 45;

local xx = 1075
local yy = 765

local xx2 = 1315
local yy2 = 945

local tweening = false

function onUpdate() 
    -- SORRY EGGU, TWEEN DURATION WAS MAKING METAL JITTER *sobs* *dies* *revives* *runs*
    if (mustHitSection == false) then 
        if (tweening == false) then
            if getProperty('dad.animation.curAnim.name') == 'singLEFT' or getProperty('dad.animation.curAnim.name') == 'singLEFT-alt' then
                triggerEvent('Camera Follow Pos', xx - ofs, yy)

                doTweenX("MetalMove1","dad",getProperty("dad.x") + 100, 0.15, "smootherStepInOut")
                tweening = true
            end
            if getProperty('dad.animation.curAnim.name') == 'singRIGHT' or getProperty('dad.animation.curAnim.name') == 'singRIGHT-alt' then
                triggerEvent('Camera Follow Pos', xx + ofs, yy)

                doTweenX("MetalMove12","dad",getProperty("dad.x") - 100, 0.15, "smootherStepInOut")
                tweening = true
            end
            if getProperty('dad.animation.curAnim.name') == 'singUP' or getProperty('dad.animation.curAnim.name') == 'singUP-alt' then
                triggerEvent('Camera Follow Pos', xx , yy - ofs)
        
                doTweenY("MetalMove123","dad",getProperty("dad.y") - 100, 0.15, "smootherStepInOut")
                tweening = true
            end
            if getProperty('dad.animation.curAnim.name') == 'singDOWN' or getProperty('dad.animation.curAnim.name') == 'singDOWN-alt'  then
                triggerEvent('Camera Follow Pos', xx , yy + ofs)

                doTweenY("MetalMove1234","dad",getProperty("dad.y") + 100, 0.15, "smootherStepInOut")
                tweening = true
            end
        end
        if getProperty('dad.animation.curAnim.name') == 'idle' or getProperty('dad.animation.curAnim.name') == 'idle-alt'  then
            triggerEvent('Camera Follow Pos', xx , yy)

            doTweenY("MetalMoveBACK", "dad", getProperty("dad.y"), 0.2, "smootherStepInOut")
            tweening = false
        end
    else
        if getProperty('boyfriend.animation.curAnim.name') == 'singLEFT' or getProperty('boyfriend.animation.curAnim.name') == 'singLEFT-alt' then
            triggerEvent('Camera Follow Pos', xx2 - ofs, yy2)
        end
        if getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT' or getProperty('boyfriend.animation.curAnim.name') == 'singRIGHT-alt' then
            triggerEvent('Camera Follow Pos', xx2 + ofs, yy2)
        end
        if getProperty('boyfriend.animation.curAnim.name') == 'singUP' or getProperty('boyfriend.animation.curAnim.name') == 'singUP-alt' then
            triggerEvent('Camera Follow Pos', xx2, yy2 - ofs)
        end
        if getProperty('boyfriend.animation.curAnim.name') == 'singDOWN' or getProperty('boyfriend.animation.curAnim.name') == 'singDOWN-alt' then
            triggerEvent('Camera Follow Pos', xx2, yy2 + ofs)
        end
        if getProperty('boyfriend.animation.curAnim.name') == 'idle' or getProperty('boyfriend.animation.curAnim.name') == 'idle-alt'  then
            triggerEvent('Camera Follow Pos', xx2, yy2)
        end
    end
end