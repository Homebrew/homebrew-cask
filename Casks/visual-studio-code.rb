cask 'visual-studio-code' do
  version '1.10.2,8076a19fdcab7e1fc1707952d652f0bb6c6db331'
  sha256 '6a5f5ab94a66221f02939cbe27a047881dacd8c1a0a4fd73c4349d4990d5f6ff'

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
