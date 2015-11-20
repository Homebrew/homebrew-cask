cask :v1 => 'visual-studio-code' do
  version '0.10.1'
  sha256 'b71089670b3c2a259bf26ad6a6ad7b0abc9bb805353e8087f5c86361a5f8defc'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "https://az764295.vo.msecnd.net/public/#{version}-release/VSCode-darwin.zip"
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
