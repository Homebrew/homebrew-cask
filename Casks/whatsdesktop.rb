cask :v1 => 'whatsdesktop' do
  version '0.1.0'
  sha256 '4c433a15f6d9ba9071bd4d8302b962f56a69e12bb54e80e7b27f40d359506071'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
