cask :v1 => 'visual-studio-code' do
  version '0.9.1'
  sha256 'a8e10d35710f0de0d7cafebbebdb0f7a6db645bf3762ea233e2306882f2fd343'

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
