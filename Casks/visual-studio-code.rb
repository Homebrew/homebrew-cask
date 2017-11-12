cask 'visual-studio-code' do
  version '1.18.0,dcee2202709a4f223185514b9275aa4229841aa7'
  sha256 '64b3642e1b12d8ba752b7bc7ab3890f2b684fd3d6359f3fe2310269c9e71b9bc'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'

  auto_updates true
  depends_on macos: '>= :mavericks'

  app 'Visual Studio Code.app'
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.microsoft.vscode.sfl*',
                '~/Library/Caches/com.microsoft.VSCode',
                '~/Library/Caches/com.microsoft.VSCode.ShipIt',
                '~/Library/Saved Application State/com.microsoft.VSCode.savedState',
              ],
      trash:  [
                '~/Library/Application Support/Code',
                '~/Library/Preferences/com.microsoft.VSCode.helper.plist',
                '~/Library/Preferences/com.microsoft.VSCode.plist',
                '~/.vscode',
              ]
end
