cask 'visual-studio-code' do
  version '0.10.9-release'
  sha256 '45d69357c9eb068dd8e624f5b0fe461cd2078d88'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "https://az764295.vo.msecnd.net/stable/#{sha256}/VSCode-darwin.zip"
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
