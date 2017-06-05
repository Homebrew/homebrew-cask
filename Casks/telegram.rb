cask 'telegram' do
  version '2.99.1-96967'
  sha256 'ed1b2cebaf24c1b275a7075edf42391df2295381c332f7413c17c797401fefbf'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '616c82006e51a542e195d36efaaa7e86477c932a6c887de8f3e1c626266088ee'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
