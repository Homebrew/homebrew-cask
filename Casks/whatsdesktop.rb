cask :v1 => 'whatsdesktop' do
  version '1.0.0'
  sha256 'bf76f620ad1f4e495eaf1f36f5300245c85afb232f7c2bcff741fe26d7b77d1b'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
