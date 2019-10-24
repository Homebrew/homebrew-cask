cask 'visual-studio-code' do
  version '1.39.2'
  sha256 '7ea4a57b28f7f9a683646e53b2a8315fa50f6fd17099e20a26a7371161c34b98'

  url "https://update.code.visualstudio.com/#{version}/darwin/stable"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/stable/VERSION'
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'

  auto_updates true

  app 'Visual Studio Code.app'
  binary 'Visual Studio Code.app/Contents/Resources/app/bin/code'

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
