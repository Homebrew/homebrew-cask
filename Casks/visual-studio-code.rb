cask 'visual-studio-code' do
  version '1.19.1,0759f77bb8d86658bc935a10a64f6182c5a1eeba'
  sha256 '88edc7b8d39554f8de5e4d322e0e7313729dc1cf86bf7a5f98b66ede5e6b6cfd'

  # az764295.vo.msecnd.net/stable was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/stable/VERSION',
          checkpoint: '4c5ef58e58572cbe80992710a6d660f220d626c508200c3248f4c25000e0c06f'
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Visual Studio Code.app'
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap trash: [
               '~/Library/Application Support/Code',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*',
               '~/Library/Caches/com.microsoft.VSCode',
               '~/Library/Caches/com.microsoft.VSCode.ShipIt',
               '~/Library/Preferences/com.microsoft.VSCode.helper.plist',
               '~/Library/Preferences/com.microsoft.VSCode.plist',
               '~/Library/Saved Application State/com.microsoft.VSCode.savedState',
               '~/.vscode',
             ]
end
