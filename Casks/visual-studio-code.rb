cask 'visual-studio-code' do
  version '1.2.1,fe7f407b95b7f78405846188259504b34ef72761'
  sha256 '5f3428a242cbb639e123f2d98f3d4d5d5d42d3d83c5fc9fcb6a0a2fb1d0f44ac'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  auto_updates true

  app 'Visual Studio Code.app'
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
