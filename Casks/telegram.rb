cask 'telegram' do
  version '2.96-94323'
  sha256 'afc6196f064368e6b6084d2b844d83f15295bc51101e0d5addc3839ddb510a70'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'bfce3755e325aa52c76a07035d4fe44bb89067a94ae1d8a25dae4c0bd1bbc698'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
