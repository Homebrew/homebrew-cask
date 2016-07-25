cask 'telegram' do
  version '2.18-48786'
  sha256 '4d9906ed6563609b52109ae7ae74933730cab3f1658f207b879dad85be763d43'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'http://osx.telegram.org/updates/versions.xml',
          checkpoint: '0ba835c2cab587341571236fc05722d2f50ad0d383b2f39b71ca1a7958640448'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
