cask 'telegram' do
  version '2.29-51395'
  sha256 'a9c8170e162ef279e758bb21b82a4942b5176e9da1000bf96a5f9d150ff0e894'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '0419c2359ef9ba9605501f77d6f84625773f5453553fafd80cf5ffbfc837eb27'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
