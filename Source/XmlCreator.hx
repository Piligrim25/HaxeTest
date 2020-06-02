import sys.io.File;

class XmlCreator {
	private var boxAmount:Int;
	private var buttonAmount:Int;
	private var columns:Int;

	public function new(boxAmount, buttonAmount, columns) {
		this.boxAmount = boxAmount;
		this.buttonAmount = buttonAmount;
		this.columns = columns;
	}

	public function createXml() {
		var vbox = Xml.createElement('vbox');
		var style = Xml.createElement('style');
		style.set('source', '../css/tabs.css');
		var tabview = Xml.createElement('tabview');

		vbox.addChild(style);
		vbox.addChild(tabview);

		createBoxes(tabview);

		writeToXmlFile(vbox);
	}

	private function createButtons(grid:Xml, i:Int) {
		for (j in 0...buttonAmount) {
			var button = createButton(i, j);
			grid.addChild(button);
		}
	}

	private function createButton(i:Int, j:Int):Xml {
		var button:Xml = Xml.createElement('button');
		button.set('text', 'info' + j);
		button.set('icon', 'assets/images/' + i + '.png');
		button.set('onclick', 'Screen.instance.messageBox(this.text)');
		button.set('styleNames', 'bigBtn');

		return button;
	}

	private function createBoxes(tabview:Xml) {
		for (i in 0...boxAmount) {
			var box = createBox(i);
			tabview.addChild(box);

			var scrollview = Xml.createElement('scrollview');
			box.addChild(scrollview);

			var grid = Xml.createElement('grid');
			grid.set('columns', Std.string(columns));
			scrollview.addChild(grid);

			createButtons(grid, i);
		}
	}

	private function createBox(i:Int):Xml {
		var box = Xml.createElement('box');
		box.set('text', 'Tab' + (i + 1));
		box.set('icon', 'haxeui-core/styles/default/haxeui_tiny.png');

		return box;
	}

	private function writeToXmlFile(vbox:Xml) {
		File.saveContent("../../../assets/ui/tabs.xml", Std.string(vbox));
	}
}
