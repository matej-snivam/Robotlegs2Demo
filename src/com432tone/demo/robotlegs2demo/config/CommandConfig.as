/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.config
{

    import com432tone.demo.robotlegs2demo.command.PostInitializeCommand;

    import robotlegs.bender.extensions.commandCenter.dsl.ICommandConfigurator;
    import robotlegs.bender.extensions.commandCenter.dsl.ICommandMapper;
    import robotlegs.bender.extensions.eventCommandMap.api.IEventCommandMap;
    import robotlegs.bender.framework.api.IConfig;
    import robotlegs.bender.framework.api.LifecycleEvent;

    public class CommandConfig implements IConfig
    {

        [Inject]
        public var eventCommandMap:IEventCommandMap;

        public function configure():void {
            eventCommandMap.map(LifecycleEvent.POST_INITIALIZE, PostInitializeCommand);
        }
    }
}
