import haxe.ui.containers.VBox;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.macros.ComponentMacros;
import sys.io.File;

class Main {
	public static function main() {
		Toolkit.init();

		var config = Xml.parse(File.getContent("assets/config.xml")).firstElement();
		var configAccess = new haxe.xml.Access(config);
		var boxes = Std.parseInt(configAccess.att.boxes);
		var columns = Std.parseInt(configAccess.att.columns);
		var buttons = Std.parseInt(configAccess.att.buttons);

		var xmlCreator = new XmlCreator(boxes, buttons, columns);
		xmlCreator.createXml();
		
		var t:Component = ComponentMacros.buildComponent("assets/ui/tabs.xml");

		Screen.instance.addComponent(t);
	}
}
