cask 'telegram' do
  version '3.0-100026'
  sha256 'a3f6c6f82555cd17ac6f9454954f0b27172e0ebf4b0f211dbb1e5e02df6d7d72'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'b2af446d207df282c0fc0e7f035881cf56594d5ff7d17470a3340131226e559e'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
