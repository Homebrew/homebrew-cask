cask 'telegram' do
  version '2.95-94203'
  sha256 '18b908e48d104c5146c53df63198d291e9306e5d3a0c4060df45abe8a6c6c74f'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'da3d85bc5eb7e460b5c08955d2ce4d2cc21ca1abcd6699444301cf771f9d6ed2'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
