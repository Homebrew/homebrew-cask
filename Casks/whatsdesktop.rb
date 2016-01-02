cask 'whatsdesktop' do
  version '1.2.0'
  sha256 '0eb3f31f600568694ffe7d6727e8d248afc6a2780ca1d25e6365ed28cc9872c1'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          :sha256 => '8ef70632f05cd008f820499a20bfb75ec9f87ae44cab6a49f6eb492796d43b5f'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
