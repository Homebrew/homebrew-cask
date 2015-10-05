cask :v1 => 'visual-studio-code' do
  version '0.8.0'
  sha256 '9105964f4b7b95fd3831165bd78a534896f22020a1d9c607c86d14532dbd2911'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "https://az764295.vo.msecnd.net/public/#{version}/VSCode-darwin.zip"
  name 'Visual Studio Code'
  homepage 'https://code.visualstudio.com/'
  license :gratis
  tags :vendor => 'Microsoft'

  app 'Visual Studio Code.app'

  zap :delete => [
                  '~/Library/Application Support/Code',
                  '~/Library/Caches/Code',
                 ]
end
