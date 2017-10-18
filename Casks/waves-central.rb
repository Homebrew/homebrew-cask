cask 'waves-central' do
  version :latest
  sha256 :no_check

  url 'http://cf-installers.waves.com/WavesCentral/Install_Waves_Central.dmg'
  name 'Waves Central'
  homepage 'http://www.waves.com/'

  app 'Waves Central.app'
end
