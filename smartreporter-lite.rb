cask 'smartreporter-lite' do
  version '2.7.4'
  sha256 '6145b1a862eb91b4254023f88422041d3505825cea37dce2ca23108d75cc44dd'

  url "https://www.corecode.at/downloads/smartreporter_#{version}.dmg"
  appcast 'http://www.corecode.at/smartreporter/smartreporter.xml',
          checkpoint: 'd15729d935392e7aa6c525d0591c27360ab5552c9f482b289c4c54464e8aa9d6'
  name 'SMARTReporter Lite'
  homepage 'http://www.corecode.at/smartreporter_lite/index.html'
  license :gratis

  app 'SMARTReporter/SMARTReporter.app'
end
