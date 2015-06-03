cask :v1 => 'visual-studio-code' do
  version '0.3.0'
  sha256 '72c9c2e5182c7d7674659f232ec1e34165892bde7c63a3cce2f63e3803b7da8f'

  url 'https://az764295.vo.msecnd.net/public/0.3.0/VSCode-darwin.zip'
  name 'Visual Studio Code'
  homepage 'https://code.visualstudio.com/'
  license :gratis
  tags :vendor => 'Microsoft'

  app 'VSCode-darwin/Visual Studio Code.app'

  zap :delete => [
                  '~/Library/Application Support/Code',
                  '~/Library/Caches/Code',
                 ]
end
