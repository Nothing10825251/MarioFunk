function onCreate()
	-- background 
	makeAnimatedLuaSprite('lvl32', 'levels/lvl32', 0, 0);
	addLuaSprite('lvl32', false)
	scaleObject('lvl32', 9, 9);
	setProperty('lvl32.antialiasing', false);
	addAnimationByPrefix('lvl32', 'idle', 'idle', 9, true);

	makeAnimatedLuaSprite('lvl3', 'levels/lvl3', 0, 0);
	addLuaSprite('lvl3', false)
	scaleObject('lvl3', 9, 9);
	setProperty('lvl3.antialiasing', false);
	addAnimationByPrefix('lvl3', 'idle', 'idle', 7, true);
end

function onEvent(name,value1,value2)
    if name == "Change Scrolltype" then
     if value1 == "on" then --el cambio de scroll antiguo daba mucho lag zd
      if downscroll then
       noteTweenY('playY0', 4, 150, 0.5,'elasticInOut')
       noteTweenY('playY1', 5, 150, 0.5,'elasticInOut')
       noteTweenY('playY2', 6, 150, 0.5,'elasticInOut')
       noteTweenY('playY3', 7, 150, 0.5,'elasticInOut')
       noteTweenAngle('play0a', 4, -360, 0.5,'elasticInOut')
       noteTweenAngle('play1a', 5, -360, 0.5,'elasticInOut')
       noteTweenAngle('play2a', 6, -360, 0.5,'elasticInOut')
       noteTweenAngle('play3a', 7, -360, 0.5,'elasticInOut')
       
       noteTweenY('opY0', 0, 150, 0.5,'elasticInOut')
       noteTweenY('opY1', 1, 150, 0.5,'elasticInOut')
       noteTweenY('opY2', 2, 150, 0.5,'elasticInOut')
       noteTweenY('opY3', 3, 150, 0.5,'elasticInOut')
       noteTweenAngle('op0a', 0, -360, 0.5,'elasticInOut')
       noteTweenAngle('op1a', 1, -360, 0.5,'elasticInOut')
       noteTweenAngle('op2a', 2, -360, 0.5,'elasticInOut')
       noteTweenAngle('op3a', 3, -360, 0.5,'elasticInOut')
       
       for i = 0, getProperty('playerStrums.length')-1 do
       setPropertyFromGroup('playerStrums',i,'downScroll',false)
       end
       
       for i = 0, getProperty('opponentStrums.length')-1 do
       setPropertyFromGroup('opponentStrums',i,'downScroll',false)
       end
      end
    if not downscroll then
        noteTweenY('playY0', 4, 500, 0.5,'elasticInOut')
        noteTweenY('playY1', 5, 500, 0.5,'elasticInOut')
        noteTweenY('playY2', 6, 500, 0.5,'elasticInOut')
        noteTweenY('playY3', 7, 500, 0.5,'elasticInOut')
        noteTweenAngle('play0a', 4, -360, 0.5,'elasticInOut')
        noteTweenAngle('play1a', 5, -360, 0.5,'elasticInOut')
        noteTweenAngle('play2a', 6, -360, 0.5,'elasticInOut')
        noteTweenAngle('play3a', 7, -360, 0.5,'elasticInOut')
        
        noteTweenY('opY0', 0, 500, 0.5,'elasticInOut')
        noteTweenY('opY1', 1, 500, 0.5,'elasticInOut')
        noteTweenY('opY2', 2, 500, 0.5,'elasticInOut')
        noteTweenY('opY3', 3, 500, 0.5,'elasticInOut')
        noteTweenAngle('op0a', 0, -360, 0.5,'elasticInOut')
        noteTweenAngle('op1a', 1, -360, 0.5,'elasticInOut')
        noteTweenAngle('op2a', 3, -360, 0.5,'elasticInOut')
        noteTweenAngle('op3a', 4, -360, 0.5,'elasticInOut')
        
       for i = 0, getProperty('playerStrums.length')-1 do
       setPropertyFromGroup('playerStrums',i,'downScroll',true)
       end
       
       for i = 0, getProperty('opponentStrums.length')-1 do
       setPropertyFromGroup('opponentStrums',i,'downScroll',true)
       end
      end  
     end
     if value1 == "off" then
     noteTweenY('playY0', 4, defaultPlayerStrumY0, 0.5,'elasticInOut')
     noteTweenY('playY1', 5, defaultPlayerStrumY1, 0.5,'elasticInOut')
     noteTweenY('playY2', 6, defaultPlayerStrumY2, 0.5,'elasticInOut')
     noteTweenY('playY3', 7, defaultPlayerStrumY3, 0.5,'elasticInOut')
     
     noteTweenY('opY0', 0, defaultOpponentStrumY0, 0.5,'elasticInOut')
     noteTweenY('opY1', 1, defaultOpponentStrumY1, 0.5,'elasticInOut')
     noteTweenY('opY2', 2, defaultOpponentStrumY2, 0.5,'elasticInOut')
     noteTweenY('opY3', 3, defaultOpponentStrumY3, 0.5,'elasticInOut')

     noteTweenAngle('play0a', 4, 360, 0.5,'elasticInOut')
     noteTweenAngle('play1a', 5, 360, 0.5,'elasticInOut')
     noteTweenAngle('play2a', 6, 360, 0.5,'elasticInOut')
     noteTweenAngle('play3a', 7, 360, 0.5,'elasticInOut')
     
     noteTweenAngle('op0a', 0, 360, 0.5,'elasticInOut')
     noteTweenAngle('op1a', 1, 360, 0.5,'elasticInOut')
     noteTweenAngle('op2a', 2, 360, 0.5,'elasticInOut')
     noteTweenAngle('op3a', 3, 360, 0.5,'elasticInOut')

     if downscroll then
     for i = 0, getProperty('playerStrums.length')-1 do
     setPropertyFromGroup('playerStrums',i,'downScroll',true)
     end
     
     for i = 0, getProperty('opponentStrums.length')-1 do
     setPropertyFromGroup('opponentStrums',i,'downScroll',true)
     end
   end
   if not downscroll then
    for i = 0, getProperty('playerStrums.length')-1 do
    setPropertyFromGroup('playerStrums',i,'downScroll',false)
    end
    
    for i = 0, getProperty('opponentStrums.length')-1 do
    setPropertyFromGroup('opponentStrums',i,'downScroll',false)
    end 
   end
    
    end
   end
  end