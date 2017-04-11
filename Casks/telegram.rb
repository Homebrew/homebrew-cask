cask 'telegram' do
  version '2.94-92789'
  sha256 '98827841ec28a6a2b1d474f8bed771b5479902fea3d3a24a68fbce1834ef94a1'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'a03b7f4e66228b33505f3e50292f2b7d863740127fe73113b1461854e78eb2b3'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
