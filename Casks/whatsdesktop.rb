cask :v1 => 'whatsdesktop' do
  version '1.0.1'
  sha256 '8d3930a9d7ed6173a57f185d72aec45a3269f17062c5ce423be2e4db60340d67'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
