function onCreate()
makeAnimatedLuaSprite('lvl22', 'levels/lvl22', 0, 0);
addLuaSprite('lvl22', false)
scaleObject('lvl22', 0, 0);
setProperty('lvl22.antialiasing', false);
addAnimationByPrefix('lvl22', 'idle', 'idle', 7, true);
end
function onEvent(name, value1, value2)
	if name == 'Switch inicial' then
--nada
	end
end