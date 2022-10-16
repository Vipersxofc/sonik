function onCreate()
    if (downscroll == true) then
        UIBPX = 0
        UIBP = 55
    
        RTBP = 110
        STBP = 160
        ATBP = 210
    else
        ThatThing = 100
        UI2BP = 500
        UIBPX = 25
        UIBP = 475
        
        ATBP = 625
        STBP = 575
        RTBP = 525
    end

    makeLuaSprite("bitchyh", "ui/UIelemnt", UIBPX, UIBP);
    setObjectCamera("bitchyh", "hud");
    scaleObject("bitchyh", 0.75, 0.75);
    setProperty("bitchyh.alpha",0);

    makeAnimatedLuaSprite("fText","event/text", UIBPX, UIBP);
    setObjectCamera("fText", "hud");
    scaleObject("fText", 0.75, 0.75);
    setProperty("fText.alpha",0);
    addAnimationByPrefix("fText","Metal-Rush","metal");
    addAnimationByPrefix("fText","End goal","credits");
    addAnimationByPrefix("fText","Egg Head","story");
    addAnimationByPrefix("fText","Checkpoint Act 2","checkpoint")
    objectPlayAnimation("fText",songName)
end

function onEvent(name) 
    if name == "boop" then
        if songName ~= "Egg Head" then
            if songName == "Metal-Rush" then
                if getPropertyFromClass("ClientPrefs","metalMedal") ~= true then
                
                end
            end
        end
        doTweenAlpha("bitchyh","bitchyh",1,1.5)
        doTweenAlpha("bitchyh2","fText",1,1.5)
    end
end
