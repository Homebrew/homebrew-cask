cask 'telegram' do
  version '2.22-50247'
  sha256 '9873a79573e88362fcaa711d1d81bc3fb9d0436bff52ed253f4b325d91d31a47'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'a934138f264574187c02345d8094eae3c3446771c226cbb4961338fe2093d976'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org'
  license :gpl

  auto_updates true

  app 'Telegram.app'
end
