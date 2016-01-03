cask 'vrep' do
  version '3.2.2'
  sha256 '9aa17c04d2e61fcd0ae2270c22b0a460beea9c86819636912cd9051237b446ff'

  url "http://coppeliarobotics.com/V-REP_PRO_EDU_V#{version.gsub('.', '_')}_Mac.zip"
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'
  license :other

  suite "V-REP_PRO_EDU_V#{version.gsub('.', '_')}_Mac"
end
