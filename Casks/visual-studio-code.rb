cask :v1 => 'visual-studio-code' do
  version '0.9.2'
  sha256 'edc7eb85c1579df7f16045850073c9c9441c2f458a1a6bbf432fa0aeeaecc08a'

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
