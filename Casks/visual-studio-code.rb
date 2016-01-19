cask 'visual-studio-code' do
  version '0.10.6-release'
  sha256 '78d333e1e7ae9bffc84fa1c6a0dbc3e8530d85b62c3b318e6687eefec2b3ddf9'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "https://az764295.vo.msecnd.net/public/#{version}/VSCode-darwin.zip"
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
