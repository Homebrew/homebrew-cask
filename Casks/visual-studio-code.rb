cask 'visual-studio-code' do
  version '1.25.1,1dfc5e557209371715f655691b1235b6b26a06be'
  sha256 '765d6303312f0b08627c9dc2f777e8a4e73309d190ecdf49082cc8985b50edb5'

  # az764295.vo.msecnd.net/stable was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/stable/VERSION'
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
