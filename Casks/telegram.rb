cask 'telegram' do
  version '2.96-94299'
  sha256 '4849845421862412060a050384d463cc16ec8927d5a0a6feb0b6f8c3603496ea'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: 'e8bbaf5b8aaf9795db75c8cff587bc5dc32622e65499b0bed6812882f85a49d6'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
