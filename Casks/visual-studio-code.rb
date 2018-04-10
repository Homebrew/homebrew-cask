cask 'visual-studio-code' do
  version '1.22.1,950b8b0d37a9b7061b6f0d291837ccc4015f5ecd'
  sha256 '9432774762704b9d204ac2c8e9a84dba9c57e70fc055d5c23ed4aaaa32c91a3b'

  # az764295.vo.msecnd.net/stable was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/stable/VERSION',
          checkpoint: '1ab15a4799cd12f77c20046fabc2500f6dc764ade6eec327959e442d6e0f0776'
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
