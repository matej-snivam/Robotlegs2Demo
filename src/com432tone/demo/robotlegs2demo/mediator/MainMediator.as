/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.mediator
{

    import com432tone.demo.robotlegs2demo.model.vo.CountUpdatedVO;
    import com432tone.demo.robotlegs2demo.signal.CountUpdated;
    import com432tone.demo.robotlegs2demo.signal.ViewClicked;

    import flash.events.MouseEvent;

    import robotlegs.bender.extensions.mediatorMap.api.IMediator;
    import robotlegs.bender.framework.api.ILogger;

    public class MainMediator implements IMediator
    {

        [Inject]
        public var view:Main;
        
        [Inject]
        public var countUpdated:CountUpdated;
        
        [Inject]
        public var viewClicked:ViewClicked;
        
        [Inject]
        public var logger:ILogger;
        
        public function initialize():void {
            logger.debug("Mediator Initialized");
            view.initialize();

            view.addEventListener(MouseEvent.CLICK, onClick);
            countUpdated.add(onCountUpdated);
        }

        private function onClick(event:MouseEvent):void {
            logger.debug("View Click Dispatched");
            viewClicked.dispatch();
        }

        private function onCountUpdated(vo:CountUpdatedVO):void {
            logger.debug("Updating click count");
            view.setCount(vo.clickCount);
        }

        public function destroy():void {
            logger.debug("Mediator Destroyed");
            view.removeEventListener(MouseEvent.CLICK, onClick);
            countUpdated.remove(onCountUpdated);
        }
    }
}
