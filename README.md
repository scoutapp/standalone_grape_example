# Example Scout APM monitored Grape application

This application is a demonstration of monitoring a Grape API with Scout APM.

As of `scout_apm` version 2.1.13, standalone Grape APIs aren't monitored
automatically, so they require a bit of manual startup code. 

**Note:** For Grape APIs embedded inside of a Rails application, they will be
instrumented automatically.

If you'd like to start monitoring your Rails application, or a standalone Grape
API - contact us at support@scoutapp.com or go to http://scoutapp.com

Important Files:
  * **config.ru** - require the `scout_apm` gem just before calling `run`
  * **rails_shim.rb** - the `scout_apm` gem still expects a few Rails constants
    to exist. This provides fake versions of those few constants.  If you use
    ActiveRecord, you likely don't need this file, as the real Rails constant
    will suffice.
  * **config/scout_apm.yml** - change the `name` attribute. It will not be
    automatically detected

