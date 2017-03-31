cask 'telegram' do
  version '2.92-91328'
  sha256 'c2348d76fa2033285d249889532401ee3084e43d5e7264b02953c60212571798'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'b0ccc1d72bc97d41d6e23674a8cf3c7a10666edaabb3ac85918317b39f1ad73b'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
