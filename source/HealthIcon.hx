package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('bf-car', [0, 1], 0, false, isPlayer);
		animation.add('bf-christmas', [0, 1], 0, false, isPlayer);
		animation.add('bf-pixel', [22, 23], 0, false, isPlayer);
		animation.add('spooky', [2, 3], 0, false, isPlayer);
		animation.add('pico', [4, 5], 0, false, isPlayer);
		animation.add('mom', [6, 7], 0, false, isPlayer);
		animation.add('mom-car', [6, 7], 0, false, isPlayer);
		animation.add('tankman', [8, 9], 0, false, isPlayer);
		animation.add('face', [10, 11], 0, false, isPlayer);
		animation.add('dad', [12, 13], 0, false, isPlayer);
		animation.add('senpai', [24, 25], 0, false, isPlayer);
		animation.add('senpai-angry', [24, 25], 0, false, isPlayer);
		animation.add('spirit', [26, 27], 0, false, isPlayer);
		animation.add('bf-old', [14, 15], 0, false, isPlayer);
		animation.add('gf', [16,17], 0, false, isPlayer);
		animation.add('blankgf', [16,17], 0, false, isPlayer);
		animation.add('gf-christmas', [16], 0, false, isPlayer);
		animation.add('gf-pixel', [16], 0, false, isPlayer);
		animation.add('parents-christmas', [18, 19], 0, false, isPlayer);
		animation.add('monster', [20, 21], 0, false, isPlayer);
		animation.add('monster-christmas', [20, 21], 0, false, isPlayer);
		animation.add('ted', [30, 31], 0, false, isPlayer);
		animation.add('concerned-ted', [32, 33], 0, false, isPlayer);
		animation.add('nibbles', [28, 29], 0, false, isPlayer);
		animation.add('evilbf', [10, 11], 0, false, isPlayer);
		animation.add('playspooky', [2, 3], 0, false, isPlayer);
		animation.add('unplayablebf', [0, 1], 0, false, isPlayer);
		animation.add('steve', [34, 35], 0, false, isPlayer);
		animation.add('playableted', [30, 31], 0, false, isPlayer);
		animation.add('hex', [10, 11], 0, false, isPlayer);
		animation.add('BF_Bob1', [10, 11], 0, false, isPlayer);
		animation.add('BF_Bob2', [10, 11], 0, false, isPlayer);
		animation.add('Sarv', [10, 11], 0, false, isPlayer);
		animation.add('pixel-ted', [30, 31], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
