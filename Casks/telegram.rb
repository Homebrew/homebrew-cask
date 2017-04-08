cask 'telegram' do
  version '2.92-91469'
  sha256 '9d97f60391df4dbfe0c3e418ea9afd28e75019b60a94ba7600e6ac54d5d9857f'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '6bbd8a701a7ca61f65b6b711bda1e5ebf8da494cf814f60613822ac5024de282'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
