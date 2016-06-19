cask 'telegram' do
  version '2.15-47337'
  sha256 '53166186b69d789f94d9153963ff9b20791a83d9e3f73ae644e8772ae911b234'

  # telegram.org was verified as official when first introduced to the cask
  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: 'fabc96e1a66b355a7e6dc59c5eb00b0d1ae06ffa26857bf7edd949ed1bc17fcc'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
