package
{

    import com432tone.demo.robotlegs2demo.config.CommandConfig;
    import com432tone.demo.robotlegs2demo.config.MediatorConfig;
    import com432tone.demo.robotlegs2demo.config.ModelConfig;
    import com432tone.demo.robotlegs2demo.config.SignalConfig;

    import flash.display.Shape;
    import flash.display.Sprite;
    import flash.text.TextField;

    import robotlegs.bender.bundles.mvcs.MVCSBundle;
    import robotlegs.bender.extensions.contextView.ContextView;
    import robotlegs.bender.extensions.signalCommandMap.SignalCommandMapExtension;
    import robotlegs.bender.framework.impl.Context;

    [SWF(width=800,height=600,backgroundColor="0xFaB478")]
    public class Main extends Sprite
    {

        private var _context:Context;
        private var _counterView:TextField;

        public function Main() {



            _context = new Context();

            _context.install(MVCSBundle,SignalCommandMapExtension);

            _context.configure(ModelConfig, SignalConfig, CommandConfig, MediatorConfig);
            _context.configure(new ContextView(this));

        }

        public function initialize():void {

            var background:Shape = new Shape();
            background.graphics.beginFill(Math.random() * 0xFFFFFF);
            background.graphics.drawRect(0, 0, stage.stageWidth, stage.stageHeight);
            background.graphics.endFill();
            addChild(background);

            var textField:TextField = new TextField();
            textField.text = "Tap the screen to see the count changing";
            textField.width = 300;
            addChild(textField);

            _counterView = new TextField();
            _counterView.x = 108;
            _counterView.y = 108;

            addChild(_counterView);

        }


        public function setCount(clickCount:int):void {
            _counterView.text = clickCount.toString();
        }
    }
}
