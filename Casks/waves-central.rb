cask 'waves-central' do
  version '1.3.0.7'
  sha256 '95ba5187b63eacc302f4d21653ec94ab020642d0712f371ce0d263834d6007db'

  url "http://installers.waves.com/WavesCentral/V#{version}/Install_Waves_Central.dmg"
  name 'Waves Central'
  homepage 'http://www.waves.com/'

  app 'Waves Central.app'
end
