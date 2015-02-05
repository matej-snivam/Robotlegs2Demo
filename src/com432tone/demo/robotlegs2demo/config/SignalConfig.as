/**
 * Created by matej on 2/4/15.
 */
package com432tone.demo.robotlegs2demo.config
{

    import com432tone.demo.robotlegs2demo.signal.CountUpdated;

    import robotlegs.bender.framework.api.IConfig;

    import robotlegs.bender.framework.api.IInjector;

    public class SignalConfig implements IConfig
    {
        [Inject]
        public var injector:IInjector;

        public function configure():void {
            injector.map(CountUpdated).asSingleton();
        }
    }
}
