cask 'telegram' do
  version '2.96-94514'
  sha256 '8188e3dab733d33f8ffea4e9d87f66fd4c473cd250ac13d50ba8696bf8210a77'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '4daa0e964e32e7b7f513acc61fed3341373fda5a33dbeaf85c3c0b6fbe009bdf'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
