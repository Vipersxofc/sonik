function onUpdatePost()
    removeLuaSprite('UI2', false)
    removeLuaSprite('UIe', false)

    removeLuaText('ringCounter', false)
    removeLuaText('scoreTxt2', false)
    removeLuaText('accTxt', false)

    setProperty('healthBar.visible', true)
    setProperty('healthBarBG.visible', true)
    setProperty('iconP1.visible', true)
    setProperty('iconP2.visible', true)
    setProperty('scoreTxt.visible', true)

    setTextFont(getProperty('scoreTxt'), 'NiseSegaSonic.ttf')
end
