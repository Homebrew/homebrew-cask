cask 'visual-studio-code' do
  version '1.14.1,2648980a697a4c8fb5777dcfb2ab110cec8a2f58'
  sha256 '2010e6664ffd88044e6c5466ddfbdaa87b5bff8f5c00f7b013d86205b5f29a60'

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
                '~/.vscode',
                '~/Library/Application Support/Code',
                '~/Library/Caches/com.microsoft.VSCode',
                '~/Library/Caches/com.microsoft.VSCode.ShipIt',
                '~/Library/Preferences/com.microsoft.VSCode.helper.plist',
                '~/Library/Preferences/com.microsoft.VSCode.plist',
                '~/Library/Saved Application State/com.microsoft.VSCode.savedState',
              ]
end
