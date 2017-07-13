cask 'telegram' do
  version '3.00.1-100200'
  sha256 '322e30a4787cc7bd10d0584bd9826329ef5d981f6ca0ab6c8429c7b3faaeed39'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '71d65d276c3136edcf7d76636ce921a320e0ab6deb118ebad4bbad7f42b92fe4'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
