cask 'telegram' do
  version '2.22-50247'
  sha256 'a18b39ec44ab64a1e14fd9c9cdf96001672c71059d41ae78b764bf4828969c1e'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '0ff8543aa9f74b9c07e6eda9edd816c204ecad2d35812f7bcc7398d4591c7da5'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
