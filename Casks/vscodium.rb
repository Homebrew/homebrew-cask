cask 'vscodium' do
  version '1.39.2'
  sha256 'f28c59863c7094fc8a347cc3f2b1748cc44d1b641cbe35ec0c2b3231428c4e26'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  auto_updates true
  conflicts_with cask: 'visual-studio-code'

  app 'VSCodium.app'
  binary 'VSCodium.app/Contents/Resources/app/bin/code'

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
