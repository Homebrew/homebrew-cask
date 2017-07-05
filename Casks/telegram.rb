cask 'telegram' do
  version '3.00.1-100189'
  sha256 'b883486c09651f49d661716e7327765ec8708f1818fd90537471f53bd68d3b15'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '71d65d276c3136edcf7d76636ce921a320e0ab6deb118ebad4bbad7f42b92fe4'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
