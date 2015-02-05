/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.config
{

    import com432tone.demo.robotlegs2demo.command.ViewClickedCommand;
    import com432tone.demo.robotlegs2demo.signal.ViewClicked;

    import robotlegs.bender.extensions.signalCommandMap.api.ISignalCommandMap;
    import robotlegs.bender.framework.api.IConfig;

    public class CommandConfig implements IConfig
    {

        [Inject]
        public var signalCommandMap:ISignalCommandMap;

        public function configure():void {
            signalCommandMap.map(ViewClicked).toCommand(ViewClickedCommand);
        }
    }
}
