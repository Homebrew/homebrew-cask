cask 'vrep' do
  version '3.4.0'
  sha256 '1046549e3cc9d8820981a82431b43a5cb06f76d5a505c6bbb603b85a144525b2'

  url "http://coppeliarobotics.com/files/V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac.zip"
  appcast 'http://www.coppeliarobotics.com/helpFiles/en/versionInfo.htm',
          checkpoint: 'bd307d5da0329fd2d2783688e6959381afc4d973abb15cb197c10ca747140125'
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'

  suite "V-REP_PRO_EDU_V#{version.dots_to_underscores}_Mac"
end
