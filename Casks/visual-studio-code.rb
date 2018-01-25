cask 'visual-studio-code' do
  version '1.19.2,490ef761b76b3f3b3832eff7a588aac891e5fe80'
  sha256 '101c2eca589aec8f72f5cd54dd4bf0cb80ac4821c6143ee07b86519c728955d6'

  # az764295.vo.msecnd.net/stable was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  appcast 'https://vscode-update.azurewebsites.net/api/update/darwin/stable/VERSION',
          checkpoint: '5e48cd4d4fd0acae91b3576cb732deb38da67a3da7a674a5e33f9ef3075c06c7'
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
