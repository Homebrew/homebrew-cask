cask :v1 => 'vrep' do
  version '3.2.1'
  sha256 '8bf388f38ee215a819a2062b6ee4d29e4607afedd44856b0dc76fe075000fad3'

  url "http://coppeliarobotics.com/V-REP_PRO_EDU_V#{version.gsub('.','_')}_Mac.zip"
  name 'V-REP'
  homepage 'http://www.coppeliarobotics.com/index.html'
  license :other

  suite "V-REP_PRO_EDU_V#{version.gsub('.','_')}_Mac"
end
