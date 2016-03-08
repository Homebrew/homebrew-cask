cask 'temperature-monitor' do
  version :latest
  sha256 :no_check

  # bresink.eu was verified as official when first introduced to the cask
  url 'http://www.bresink.eu/Downloads/TemperatureMonitor.dmg'
  name 'Temperature Monitor'
  homepage 'http://www.bresink.com/osx/LegacyProducts.html'
  license :commercial

  # Renamed for consistency: app name is different in the Finder and in a shell.
  app 'TemperatureMonitor.app', target: 'TemperatureMonitor.app'
  app 'TemperaturMonitorLite.app', target: 'Temperature Monitor Lite.app'

  caveats do
    discontinued
  end
end
