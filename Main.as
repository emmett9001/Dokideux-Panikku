﻿package {
	import com.adamatomic.flixel.FlxGame;
	import game.IntroState;
	
	[SWF(width="640", height="480", backgroundColor="#000000")]
	[Frame(factoryClass="Preloader")]

	public class Main extends FlxGame
	{
		public function Main():void
		{
			super(320,240,IntroState,2,0xff131c1b,false,0xff729954);
			help("Jump", "Shoot", "Nothing");
		}
	}
}
