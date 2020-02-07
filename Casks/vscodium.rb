cask 'vscodium' do
  version '1.42.0'
  sha256 'c4485df4fa994a3d9c5bcf20d155b571f1f7c614bcf0ff416279cfcec582fe39'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-darwin-#{version}.zip"
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
