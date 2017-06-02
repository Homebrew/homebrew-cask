cask 'visual-studio-code' do
  version '1.12.2,19222cdc84ce72202478ba1cec5cb557b71163de'
  sha256 '04e6b3b0488268da93187d5e16738f98058fa095ead453c6139fec4244f6f0e8'

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
