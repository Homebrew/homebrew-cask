cask 'telegram' do
  version '3.1-101128'
  sha256 'be11962e35edeeaf5b139b2e87e430f4cc1465e287526497aabbc605724a0f27'

  url "https://osx.telegram.org/updates/Telegram-#{version}.app.zip"
  appcast 'https://osx.telegram.org/updates/versions.xml',
          checkpoint: '0178bd7e6dc31f0f2a1dc4251fef25468f6fd78c6409db1dc72f8c44604938ee'
  name 'Telegram for macOS'
  homepage 'https://macos.telegram.org/'

  auto_updates true
  depends_on macos: '>= 10.11'

  app 'Telegram.app'
end
