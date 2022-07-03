local BarSize;

BarSize = 36; -- default
-- if songName == [desiredSong];
	-- BarSize = [desiredBarSize]; - use this for different bar sizes for each song

function onCreate()
	-- background shit
	makeLuaSprite('lockers', 'stages/lockers/school-bg', 0, 0);
	setScrollFactor('lockers', 1, 1);

	makeAnimatedLuaSprite('neneswag','stages/lockers/neneswag',1100,600)addAnimationByPrefix('neneswag','dance','IdleDance',30,true)
objectPlayAnimation('neneswag','dance',false)
setScrollFactor('neneswag', 1, 1);

makeAnimatedLuaSprite('fg_characters','stages/lockers/fg_characters',250,600)addAnimationByPrefix('fg_characters','dance','BgCharacters',30,true)
objectPlayAnimation('fg_characters','dance',false)
setScrollFactor('fg_characters', 1, 1);

makeLuaSprite('stages/glow', 'stages/glow', -500, -300);
setScrollFactor('stages/glow', 0.4, 0.4);
scaleObject('stages/glow', 2, 1.5);

makeLuaSprite('blackbar', "", 0, -360 + (BarSize * 10));
makeGraphic('blackbar', 1600, 360, '000000');
setObjectCamera('blackbar', 'camHUD');

makeLuaSprite('blackbar2', "", 0, 720 + -(BarSize * 10));
makeGraphic('blackbar2', 1600, 360, '000000');
setObjectCamera('blackbar2', 'camHUD');


	addLuaSprite('lockers', false);
	addLuaSprite('neneswag', false);
	addLuaSprite('fg_characters', true);
	addLuaSprite('stages/glow', true);
	addLuaSprite('blackbar', false);
	addLuaSprite('blackbar2', false);
	doTweenColor('1bruh1', 'blackbar', '000000', 0.001, 'quintInOut');
	doTweenColor('2bruh2', 'blackbar2', '000000', 0.001, 'quintInOut');
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end