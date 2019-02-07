cask 'vscodium' do
  version '1.31.0'
  sha256 'd394b6a7a67a2382bf85d59eb864039b9894f1f6b88bb7dbf8760f611ead4923'

  url "https://github.com/VSCodium/vscodium/releases/download/#{version}/VSCodium-darwin-#{version}.zip"
  appcast 'https://github.com/VSCodium/vscodium/releases.atom'
  name 'VSCodium'
  homepage 'https://github.com/VSCodium/vscodium'

  app 'VSCodium.app'

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
