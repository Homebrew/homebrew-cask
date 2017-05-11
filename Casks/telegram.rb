cask 'telegram' do
  version '2.98-95522'
  sha256 '96524e019e5c617f165bc64bd1577341e734384ac5b68c4a009856cf85d961b1'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '454ae716aef49d8f7417445c681860ff5610f89e59fc21899e2f95ef9d596bca'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
