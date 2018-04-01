cask 'visual-studio-code' do
  version '1.21.0,9a199d77c82fcb82f39c68bb33c614af01c111ba'
  sha256 '532b5a64cf5ad94a89d555cb77dadf71dbefbb99c87378c9aaaa4c44d487b44a'

  # az764295.vo.msecnd.net/stable was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/stable/VERSION',
          checkpoint: '8cd50c8953a425acf570f08fd7dc97e0b4939db3af331fe85f37c05a36c2ccc1'
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
