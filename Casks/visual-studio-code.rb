cask 'visual-studio-code' do
  version '1.1.0,c212f0908f3d29933317bbc3233568fbca7944b1'
  sha256 '7bbcd8c2a85a5f711b5a31825bd970c7cf57404bdd61f136f3c1c5bc4b96e2ac'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  auto_updates true

  app 'Visual Studio Code.app'
  binary 'Visual Studio Code.app/Contents/Resources/app/bin/code'

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
