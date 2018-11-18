using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Midi.RNMidi
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNMidiModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNMidiModule"/>.
        /// </summary>
        internal RNMidiModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNMidi";
            }
        }
    }
}
