package;


import haxe.io.Bytes;
import lime.utils.AssetBundle;
import lime.utils.AssetLibrary;
import lime.utils.AssetManifest;
import lime.utils.Assets;

#if sys
import sys.FileSystem;
#end

@:access(lime.utils.Assets)


@:keep @:dox(hide) class ManifestResources {


	public static var preloadLibraries:Array<AssetLibrary>;
	public static var preloadLibraryNames:Array<String>;
	public static var rootPath:String;


	public static function init (config:Dynamic):Void {

		preloadLibraries = new Array ();
		preloadLibraryNames = new Array ();

		rootPath = null;

		if (config != null && Reflect.hasField (config, "rootPath")) {

			rootPath = Reflect.field (config, "rootPath");

		}

		if (rootPath == null) {

			#if (ios || tvos || emscripten)
			rootPath = "assets/";
			#elseif android
			rootPath = "";
			#elseif console
			rootPath = lime.system.System.applicationDirectory;
			#else
			rootPath = "./";
			#end

		}

		#if (openfl && !flash && !display)
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_medium_ttf);
		openfl.text.Font.registerFont (__ASSET__OPENFL__fonts_roboto_regular_ttf);
		
		#end

		var data, manifest, library, bundle;

		#if kha

		null
		library = AssetLibrary.fromManifest (manifest);
		Assets.registerLibrary ("null", library);

		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("null");

		#else

		Assets.libraryPaths["default"] = rootPath + "manifest/default.json";
		

		library = Assets.getLibrary ("default");
		if (library != null) preloadLibraries.push (library);
		else preloadLibraryNames.push ("default");
		

		#end

	}


}


#if kha

null

#else

#if !display
#if flash

@:keep @:bind @:noCompletion #if display private #end class __ASSET__styles_default_main_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__styles_main_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_medium_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_eot extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_svg extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_ttf extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_woff extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_woff2 extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_config_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_css_tabs_css extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_0_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_1_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_images_2_png extends flash.display.BitmapData { public function new () { super (0, 0, true, 0); } }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__assets_ui_tabs_xml extends null { }
@:keep @:bind @:noCompletion #if display private #end class __ASSET__manifest_default_json extends null { }


#elseif (desktop || cpp)

@:keep @:file("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/styles/default/main.css") @:noCompletion #if display private #end class __ASSET__styles_default_main_css extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/styles/main.css") @:noCompletion #if display private #end class __ASSET__styles_main_css extends haxe.io.Bytes {}
@:keep @:font("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/fonts/Roboto-Medium.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_medium_ttf extends lime.text.Font {}
@:keep @:file("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/fonts/Roboto-Regular.eot") @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_eot extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/fonts/Roboto-Regular.svg") @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_svg extends haxe.io.Bytes {}
@:keep @:font("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/fonts/Roboto-Regular.ttf") @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_ttf extends lime.text.Font {}
@:keep @:file("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/fonts/Roboto-Regular.woff") @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_woff extends haxe.io.Bytes {}
@:keep @:file("C:/HaxeToolkit/haxe/haxeui-openfl/1,0,7/./assets/fonts/Roboto-Regular.woff2") @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_woff2 extends haxe.io.Bytes {}



#else

@:keep @:expose('__ASSET__fonts_roboto_medium_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_medium_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Medium.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto Medium"; super (); }}
@:keep @:expose('__ASSET__fonts_roboto_regular_ttf') @:noCompletion #if display private #end class __ASSET__fonts_roboto_regular_ttf extends lime.text.Font { public function new () { #if !html5 __fontPath = "fonts/Roboto-Regular.ttf"; #else ascender = null; descender = null; height = null; numGlyphs = null; underlinePosition = null; underlineThickness = null; unitsPerEM = null; #end name = "Roboto"; super (); }}


#end

#if (openfl && !flash)

#if html5
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_medium_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_medium_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_medium_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_regular_ttf ()); super (); }}

#else
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_medium_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_medium_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_medium_ttf ()); super (); }}
@:keep @:expose('__ASSET__OPENFL__fonts_roboto_regular_ttf') @:noCompletion #if display private #end class __ASSET__OPENFL__fonts_roboto_regular_ttf extends openfl.text.Font { public function new () { __fromLimeFont (new __ASSET__fonts_roboto_regular_ttf ()); super (); }}

#end

#end
#end

#end
