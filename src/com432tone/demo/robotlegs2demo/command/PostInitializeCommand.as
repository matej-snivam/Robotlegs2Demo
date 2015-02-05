/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.command
{

    import robotlegs.bender.framework.api.ILogger;

    public class PostInitializeCommand implements ICommand
    {
        [Inject]
        public var logger:ILogger;
        
        public function execute():void {
            logger.debug("App Initialized");
        }
    }
}
