function onCreatePost()--this thing happens once the characters are spawned

setProperty("gf.visible", false);

setProperty("boyfriend.visible", false);

end

function onCreate()

setProperty("gf.visible", false);


	setPropertyFromClass('GameOverSubstate', 'characterName', 'bf-death'); --Character json file for the death animation
   	 	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'fnf_loss_sfx'); --put in mods/sounds/
   		 setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
    		setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/

	-- background shit
	
	makeLuaSprite('bg', 'Bg', -330, -500);
	setLuaSpriteScrollFactor('bg', 1.0, 1.0);

   		makeAnimatedLuaSprite('beeg','beeg', -105, 300)
    		addAnimationByPrefix('beeg','beeg','Beegie Bop',24,false);
    		objectPlayAnimation('beeg','Beegie Bop',false);


	addLuaSprite('bg', false);
	addLuaSprite('beeg', false);

end	

function onBeatHit()
	
	objectPlayAnimation('beeg','beeg' ,false);

end