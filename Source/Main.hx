package;

import haxe.ui.containers.VBox;
import haxe.ui.Toolkit;
import haxe.ui.components.Button;
import haxe.ui.core.Component;
import haxe.ui.core.Screen;
import haxe.ui.macros.ComponentMacros;

class Main {
    public static function main() {
		Toolkit.init();
		
		var tabs:Component = ComponentMacros.buildComponent("assets/ui/tabs.xml");
		tabs.addChild (new HelloWorldController ().view);
		Screen.instance.addComponent(tabs);

    }
}