cask 'visual-studio-code' do
  version '1.15.1,41abd21afdf7424c89319ee7cb0445cc6f376959'
  sha256 '17038f27d0ec921e246ae30265497fe0933ed4c8a29e1cc146f75e95d879f2b9'

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
