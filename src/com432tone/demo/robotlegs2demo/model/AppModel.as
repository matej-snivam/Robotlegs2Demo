/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.model
{

    import com432tone.demo.robotlegs2demo.model.vo.CountUpdatedVO;
    import com432tone.demo.robotlegs2demo.signal.CountUpdated;

    import robotlegs.bender.framework.api.ILogger;

    public class AppModel
    {
        private var _clickCount:int;
        private var _countUpdated:CountUpdated;
        private var _logger:ILogger;

        public function increaseClickCount():void {
            _clickCount++;
            _logger.debug("Count Increased to: " + _clickCount);
            _countUpdated.dispatch(new CountUpdatedVO(_clickCount));
        }

        [Inject]
        public function set countUpdated(value:CountUpdated):void {
            _countUpdated = value;
        }

        [Inject]
        public function set logger(value:ILogger):void {
            _logger = value;
        }
    }
}
