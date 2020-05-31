import haxe.ui.containers.VBox;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.macros.ComponentMacros;

class Main {
	public static function main() {
		Toolkit.init();

		new XmlCreator().createXml();
		var t:Component = ComponentMacros.buildComponent("assets/ui/tabs.xml");

		Screen.instance.addComponent(t);
	}
}
