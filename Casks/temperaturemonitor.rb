cask :v1 => 'temperaturemonitor' do
  version :latest
  sha256 :no_check

  # bresink.eu is the official download host per the vendor homepage
  url 'http://www.bresink.eu/Downloads/TemperatureMonitor.dmg'
  homepage 'http://www.bresink.com/osx/LegacyProducts.html'
  license :commercial

  app 'TemperatureMonitor.app'
  app 'TemperatureMonitorLite.app'
end
