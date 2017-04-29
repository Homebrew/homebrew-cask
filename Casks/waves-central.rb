cask 'waves-central' do
  version '1.3.1.4'
  sha256 '7df74304ee460539fceac42fd02c6c83b8d7e06e1b3215946a938c8acddb2c41'

  url "http://installers.waves.com/WavesCentral/V#{version}/Install_Waves_Central.dmg"
  name 'Waves Central'
  homepage 'http://www.waves.com/'

  app 'Waves Central.app'
end
