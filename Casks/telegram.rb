cask 'telegram' do
  version '2.96-94514'
  sha256 'a091c265aca31950a2499e2ea87eef97b202dd34e6a7bb0aeaf9b4b34eb32790'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'a994c3d749adcde32374d951db9cbc700687bf6ceb9b2594e4ae7448c5355302'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
