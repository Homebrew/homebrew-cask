cask 'vscodium' do
  version '1.43.0'
  sha256 '626b8ffd13b44eff4cf27621a6948796ac5cc17fdba5aefb178761124822b72a'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium.#{version}.dmg"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  auto_updates true
  conflicts_with cask: 'visual-studio-code'

  app 'VSCodium.app'
  binary "#{appdir}/VSCodium.app/Contents/Resources/app/bin/code"

  zap trash: [
               '~/Library/Application Support/VSCodium',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.visualstudio.code.oss.sfl*',
               '~/Library/Logs/VSCodium',
               '~/Library/Preferences/com.visualstudio.code.oss.helper.plist',
               '~/Library/Preferences/com.visualstudio.code.oss.plist',
               '~/Library/Saved Application State/com.visualstudio.code.oss.savedState',
               '~/.vscode-oss',
             ]
end
