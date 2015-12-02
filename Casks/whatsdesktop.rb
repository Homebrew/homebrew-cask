cask :v1 => 'whatsdesktop' do
  version '1.2.0'
  sha256 '0eb3f31f600568694ffe7d6727e8d248afc6a2780ca1d25e6365ed28cc9872c1'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
