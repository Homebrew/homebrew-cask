cask 'waves-central' do
  version '1.3.2.4'
  sha256 'a51c3cdc4c7c2d72920717b90349a139768cb2a09a8fd57a686cae9fb615482f'

  url "http://installers.waves.com/WavesCentral/V#{version}/Install_Waves_Central.dmg"
  name 'Waves Central'
  homepage 'http://www.waves.com/'

  app 'Waves Central.app'
end
