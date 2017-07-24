cask 'telegram' do
  version '3.1-101250'
  sha256 '85b5b5914cdcf91bc032969e2102f4358783812c14db11fac4fa22ad4926cd24'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'f9b4add04471a56b3bd37430b304e9abb9c00416596c43ed1605346b19623f35'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
