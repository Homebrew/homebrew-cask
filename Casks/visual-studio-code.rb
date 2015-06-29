cask :v1 => 'visual-studio-code' do
  version :latest
  sha256 :no_check

  url 'https://go.microsoft.com/fwlink/?LinkID=534106'
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
