cask 'whatsdesktop' do
  version '1.5.0'
  sha256 '9c87f2b645af15403320b27eb52832298ce35248ddfe17758fd3a481f757d8d6'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          checkpoint: '5b5653e70334bdaca685120b96c1d989d7f91610820ad02dc24140950eb71f74'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
