cask :v1 => 'temperaturemonitor' do
  version '4.98'
  sha256 '5a596ee1a4deeb8287727f41c816a15a542b3d027ed0ef2614ad32a5a118aeeb'

  url "http://www.bresink.eu/Downloads/TemperatureMonitor.dmg"
  homepage 'http://www.bresink.com/osx/LegacyProducts.html'
  license :commercial

  app 'TemperatureMonitor.app'
  app 'TemperaturMonitorLite.app'
end
