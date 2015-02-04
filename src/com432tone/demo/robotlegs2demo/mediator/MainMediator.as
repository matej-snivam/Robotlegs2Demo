/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.mediator
{

    import robotlegs.bender.extensions.mediatorMap.api.IMediator;

    public class MainMediator implements IMediator
    {

        [Inject]
        public var view:Main;
        
        public function initialize():void {
            view.sayHelloWorld();
        }

        public function destroy():void {
        }
    }
}
