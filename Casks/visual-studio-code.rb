cask :v1 => 'visual-studio-code' do
  version '0.10.2'
  sha256 '3371bff1e11daa49ad77ad1eed683d1baaf073477c1baff20626250d5ee6153e'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "https://az764295.vo.msecnd.net/public/#{version}/VSCode-darwin.zip"
  name 'Visual Studio Code'
  homepage 'https://code.visualstudio.com/'
  license :mit
  tags :vendor => 'Microsoft'

  app 'Visual Studio Code.app'

  zap :delete => [
                  '~/Library/Application Support/Code',
                  '~/Library/Caches/Code',
                 ]
end
