cask 'visual-studio-code' do
  version '1.11.1,d9484d12b38879b7f4cdd1150efeb2fd2c1fbf39'
  sha256 'a6030e85665828b72aeb8abc2f5310e8d0066a91471531053bd950f0356f7fb8'

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
