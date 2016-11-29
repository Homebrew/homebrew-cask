cask 'waves-central' do
  version '1.1.0.22'
  sha256 '0144e9883cef68dbf6a4194caf31bf4e3ffeefa7950063c8ac12547eb0a34dc9'

  url "http://installers.waves.com/WavesCentral/V#{version}/Install_Waves_Central.dmg"
  name 'Waves Central'
  homepage 'http://www.waves.com/'

  app 'Waves Central.app'
end
