cask 'vrep' do
  version '3.6.0'
  sha256 '0819d45f8f841f44b5826815e3ea3e2f547d57d1f02711008c6d2f64b8d017ee'

  url "http://coppeliarobotics.com/files/V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac.zip"
  appcast 'http://www.coppeliarobotics.com/helpFiles/en/versionInfo.htm'
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'

  suite "V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac"
end
