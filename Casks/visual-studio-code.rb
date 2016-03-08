cask 'visual-studio-code' do
  version '0.10.10'
  sha256 'd7988bd343a95625811334d3f73ce36947732e86f07eeddaf62c426bb4d02a78'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/5b5f4db87c10345b9d5c8d0bed745bcad4533135/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  auto_updates true

  app 'Visual Studio Code.app'

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
