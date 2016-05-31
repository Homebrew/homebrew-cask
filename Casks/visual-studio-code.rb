cask 'visual-studio-code' do
  version '1.1.1,def9e32467ad6e4f48787d38caf190acbfee5880'
  sha256 'd0e0e40cca55fb4c84bc868530d6dddbd5fdc7d8e24cad39cf777ec99edceb85'

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
