cask 'temperature-monitor' do
  version :latest
  sha256 :no_check

  # bresink.eu was verified as official when first introduced to the cask
  url 'https://www.bresink.eu/Downloads/TemperatureMonitor.dmg'
  name 'Temperature Monitor'
  homepage 'https://www.bresink.com/osx/LegacyProducts.html'

  app 'Temperature Monitor.app'
  app 'Temperatur Monitor Lite.app'

  caveats do
    discontinued
  end
end
