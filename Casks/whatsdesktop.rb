cask 'whatsdesktop' do
  version '1.3.0'
  sha256 'efd01a6e7140017d40b25a82e553b79d0e36c98bf85317a629064713efafa9d1'

  url "https://github.com/mawie81/whatsdesktop/releases/download/#{version}/WhatsDesktop-osx-#{version}.zip"
  appcast 'https://github.com/mawie81/whatsdesktop/releases.atom',
          :sha256 => '8ef70632f05cd008f820499a20bfb75ec9f87ae44cab6a49f6eb492796d43b5f'
  name 'WhatsDesktop'
  homepage 'https://github.com/mawie81/whatsdesktop'
  license :mit

  app 'WhatsDesktop.app'
end
