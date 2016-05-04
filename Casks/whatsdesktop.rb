cask 'whatsdesktop' do
  version '1.6.0'
  sha256 '1b6b0786f75771d2651d219cc8d919ae45926ff46b51d171ea2770afaa311fa6'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          checkpoint: '1c1cecb1ffbb60e1b46e04b4c3ecd830f8126d1bc47068ff1d6ce1f1dabefc80'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
