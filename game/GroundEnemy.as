package game{
	
	import com.adamatomic.flixel.*;

	public class GroundEnemy extends FlxSprite{

		[Embed(source="data/groundEnemy.png")] protected var imgEnemy:Class;

		protected var _jumpPower:int;
		protected var runSpeed:uint = 90;
		protected var posCounter:uint = 0;
		public var _locked:Boolean = false;

		public function GroundEnemy(x:uint, y:uint):void{
			super(imgEnemy,x,y,true,true,12);
			drag.x = runSpeed*8;
			acceleration.y = 420; //gravity
			_jumpPower = 200;
			maxVelocity.x = runSpeed;
			maxVelocity.y = _jumpPower;

			addAnimation("run", [0, 1], 15);
		}

		override public function update():void{
			posCounter++;
			velocity.x = Math.cos(posCounter / 50) * 50;
			if(velocity.x < 0)
				facing = RIGHT;
			if(velocity.x > 0)
				facing = LEFT;
			play("run");
			super.update();
		}
	}
}
