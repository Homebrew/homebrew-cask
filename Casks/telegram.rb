cask 'telegram' do
  version '2.28-51240'
  sha256 '13da2ac429313ff8ae91990ef149918fb7fe8a355d140fc9beb3dde2789e11be'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '5a478e37b4fd26c4520ed4623dfa19ccc6abb5ade968c367f6901de6a5db5e8e'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true

  app 'Telegram.app'
end
