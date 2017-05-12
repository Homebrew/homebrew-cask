cask 'telegram' do
  version '2.98-95570'
  sha256 '9a846e14d2815273507f08525a40420edf7798d048674c80d7d31f32b61b714e'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '7e98bb2d1b9532d1f2da3d9f0212a79b3ef0d9682f541433b022910f4fe1dc20'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
