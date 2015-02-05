/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.model.vo
{

    public class CountUpdatedVO
    {
        private var _clickCount:int;
        
        public function CountUpdatedVO(clickCount:int) {
            _clickCount = clickCount;
        }

        public function get clickCount():int {
            return _clickCount;
        }
    }
}
