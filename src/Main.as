package
{

    import com432tone.demo.robotlegs2demo.config.CommandConfig;
    import com432tone.demo.robotlegs2demo.config.MediatorConfig;
    import com432tone.demo.robotlegs2demo.config.ModelConfig;

    import flash.display.Sprite;
    import flash.text.TextField;

    import robotlegs.bender.bundles.mvcs.MVCSBundle;
    import robotlegs.bender.extensions.contextView.ContextView;

    import robotlegs.bender.framework.impl.Context;

    public class Main extends Sprite
    {

        private var _context:Context;

        public function Main() {


            _context = new Context();

            _context.install(MVCSBundle);

            _context.configure(ModelConfig, CommandConfig, MediatorConfig);
            _context.configure(new ContextView(this));
        }

        public function sayHelloWorld():void {
            var textField:TextField = new TextField();
            textField.text = "Hello, World";
            addChild(textField);
        }
    }
}
