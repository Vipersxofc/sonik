local selected = 0
local selectedAr = 0

local credits = {
    {'Fresh', 'Director, Lead Artist',"00a86b"},
    {'Eggu', 'Lead Programmer, UI Artist',"00a86b"},
    {'SnoWaveDEV', 'Programmer, Lead Sprite Artist', "FFFFFF"},
    {'ManuMan4774', 'Sprite Artist',"00ff80"},
    {'TSS', 'Lead Musician',"000fff"},
    {'Timson', 'Lead Charter',"64ffa5"},
    {'Dyno', 'Musician',"af4600"},
    {'Propsnax','musician',"580000"},
    {'Rocky', 'Musician',"19cdff"},
    {'Authorisen_Codres', 'BG Artist', "900c3f"},
    {'Juan Potato', 'Charter',"b56f61"},
    {'Sk1ttles_', 'Pixel BG Artist',"228b22"},
    {'Daniel Murphy', 'Sprite Artist',d},
    {'Cinnabun', 'BG Artist',"C58C66"},
    {'Juxo', 'Pixel Sprite Artist',j},
    {'Prober', 'Play Tester',p},
    {'LUCA','Special thanks',"af4600"};
    {'And team wisps','thank you to the whole team!',"0153ca"}
}
function onCreatePost()
    makeLuaText("Name","",500, 750,630)
    makeLuaText("subText", "", 500, 750,670)
    setTextSize("Name",30)

    setTextAlignment("Name","right")
    setTextAlignment("subText","right")

    setTextFont("Name","NiseSegaSonic.ttf")
    setTextFont("subText","NiseSegaSonic.ttf")

    addLuaText("Name")
    addLuaText("subText")

    makeLuaText("thank","Thank you for playing!", 500,640,680)
    setTextAlignment("thank","center")

    --end stuffs

    makeAnimatedLuaSprite("Icon","customCredits/icons",1125,520)
    runTimer("anims",0.01,50)
    scaleObject("Icon",0.75,0.75)
end

function onTimerCompleted(tag)
    if tag == "CreditScroll" then
        selected = selected+1
        changeCredit()
        if selected == 18 then
            doTweenX("go, venture fourth","Icon",975,0.5,"expoInOut")
            doTweenY("go, venture fourth1","Icon",500,0.5,"expoInOut")
            doTweenX("go, venture fourth2","Icon.scale",1.5,0.5,"expoInOut")
            doTweenY("go, venture fourth3","Icon.scale",1.5,0.5,"expoInOut")
            --guys, the tag happens to be funny 4 TIMES IN A ROW! did you laugh at this?
            runTimer("tweenOut",2.5)
        end
    elseif tag == "anims" then
        selectedAr = selectedAr+1
        addAnimationByPrefix("Icon",credits[selectedAr][1],credits[selectedAr][1],24)
    elseif tag == "tweenOut" then
        doTweenX("iconOut","Icon", 1500, 3.5, "expoInOut")
        doTweenX("Nameout","Name", 1500, 3.5, "expoInOut")
        doTweenX("subTextout","subText", 1500, 3.5, "expoInOut")
    end
end

function changeCredit()
    if (selected == 1) then
        addLuaSprite("Icon",true)
        setObjectCamera("Icon","camOther")
    end
    --set text to selected in credits
    setTextString("Name", credits[selected][1])
    --set text to selected in subtext
    setTextString("subText", credits[selected][2])
    --set icon animation to selected in credits
    --not yet bitch
    --fine ill write the code outline
    objectPlayAnimation("Icon",credits[selected][1])
    --now its time for le color
    setTextColor("Name", credits[selected][3])
    setTextColor("subText", credits[selected][3])
end

function onEvent(name,v1)
    if (name == 'credit roll') then
        if v1 == "true" then
            setObjectCamera("Name","camOther")
            setObjectCamera("subText","camOther")
            runTimer("CreditScroll",2,18)    
        else
            doTweenAlpha("m", "back",4,1)  
            doTweenAlpha("me", "ring",4,1)  
            doTweenAlpha("vme", 'shake',4,1)  
            doTweenAlpha("nvme", 'banner',4,1)  
            doTweenAlpha("wowzas", 'tw',4,1)  

            setProperty('defaultCamZoom', 1.25)
            addLuaText("thank")
        end
    end
end

function onTweenCompleted(tag)
    if (tag == "m") then
        removeLuaSprite("white", false)
    end
end

