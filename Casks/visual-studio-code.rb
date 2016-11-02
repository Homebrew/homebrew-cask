cask 'visual-studio-code' do
  version '1.7.0,9e7d70052908b633e0d4f71e70b26714bd1d2f10'
  sha256 '12da0bb4811ef2b12eaf9c0d72a42c3a14e531baceaaa03bb8ed753999617e08'

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
