cask 'visual-studio-code' do
  version '1.7.1,02611b40b24c9df2726ad8b33f5ef5f67ac30b44'
  sha256 'f82d13dc2717f7cd31c3c1d3253af21af6c2c259b4bfef12263aa75b684fef15'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'

  auto_updates true

  app 'Visual Studio Code.app'
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
