cask 'vrep' do
  version '3.5.0'
  sha256 '751dcc1200803395358e788ffa42ad3f998278e380da15feb37f31fd88f3517c'

  url "http://coppeliarobotics.com/files/V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac.zip"
  appcast 'http://www.coppeliarobotics.com/helpFiles/en/versionInfo.htm',
          checkpoint: 'cd7f357c87479c3832127ba84e32c74eb4b47af4e95e55ca6aee9fdadc8093c2'
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'

  suite "V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac"
end
