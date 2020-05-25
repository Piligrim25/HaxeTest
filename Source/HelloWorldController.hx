package;

class HelloWorldController {
	public function new ():Void {
		super ("tabs.xml");
		attachEvent ("myButton", UIEvent.CLICK, myButtonClicked);
	}
	private function myButtonClicked (e:UIEvent):Void {
		getComponentAs ("myButton", Button).text = "You clicked me!";
	}
}