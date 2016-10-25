package gasm.extra.components;
import gasm.core.Component;
import gasm.core.components.SpriteModelComponent;
import gasm.core.enums.ComponentType;
import gasm.core.math.Point;

/**
 * ...
 * @author Leo Bergman
 */
class OffsetComponent extends Component
{
	public var offset(default, null):Point;
	
	public function new(?x:Float=0, ?y:Float=0) 
	{
		offset = new Point(x, y);
		componentType = ComponentType.Actor;
		
	}
	
	override public function update(dt:Float) 
	{
		var model = owner.get(SpriteModelComponent);
		model.offsetX = offset.x;
		model.offsetY = offset.y;
	}
	
}