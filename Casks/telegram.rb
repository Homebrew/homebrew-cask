cask 'telegram' do
  version '2.96-94323'
  sha256 'e44612746753ec14c4616e5a71c50768a0d544611ba14f449cd5dc9ab7feb29a'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '9b95cfd73f79a97cfd393ba6f8f689f07049afb9b2d802f0ce762af1f0720a9b'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
