cask 'telegram' do
  version '3.1-101111'
  sha256 '8995d9cb9b66331f3a857b6eee3166efa3fcde4e586f3405b701e048260c7ee9'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '589413cf4d93a1d9fa3852e38b78fa74cffbe0029924b4fa987a293bc01b90b1'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
