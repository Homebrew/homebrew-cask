cask :v1 => 'whatsdesktop' do
  version '1.1.0'
  sha256 '41548bf179e73d6c385ecab9cd1975aec7c38261d3f0a555cf2ef246be6c6476'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
