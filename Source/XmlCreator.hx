import sys.io.File;

class XmlCreator {
	private final boxAmount:Int = 3;
	private final buttonAmount:Int = 16;
	private final columns:Int = 4;

	public function new() {}

	public function createXml() {
		var vbox = Xml.createElement('vbox');
		var style = Xml.createElement('style');
		style.set('source', '../css/tabs.css');
		var tabview = Xml.createElement('tabview');

		vbox.addChild(style);
		vbox.addChild(tabview);

		for (i in 0...boxAmount) {
			var box = Xml.createElement('box');
			box.set('text', 'Tab' + (i + 1));
			box.set('icon', 'haxeui-core/styles/default/haxeui_tiny.png');
			tabview.addChild(box);

			var scrollview = Xml.createElement('scrollview');
			box.addChild(scrollview);

			var grid = Xml.createElement('grid');
			grid.set('columns', Std.string(columns));
			scrollview.addChild(grid);

			for (j in 0...buttonAmount) {
				var button:Xml = Xml.createElement('button');
				button.set('text', 'info' + j);
				button.set('icon', 'assets/images/' + i + '.png');
				button.set('onclick', 'Screen.instance.messageBox(this.text)');
				button.set('styleNames', 'bigBtn');
				grid.addChild(button);
			}
		}

		write(vbox);
	}

	private function write(vbox:Xml) {
		File.saveContent("../../../assets/ui/tabs.xml", Std.string(vbox));
	}
}
