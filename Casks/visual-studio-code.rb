cask 'visual-studio-code' do
  version '0.10.6-release'
  sha256 '6fd0442a4b64a66ee27f0d09caf27bcc117737bd997653b94e8404ef7795f963'

  # vo.msecnd.net is the official download host per the vendor homepage
  url "https://az764295.vo.msecnd.net/public/#{version}/VSCode-darwin.zip"
  name 'Microsoft Visual Studio Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  app 'Visual Studio Code.app'

  zap :delete => [
                  '~/Library/Application Support/Code',
                  '~/Library/Caches/Code',
                 ]

  auto_updates true
end
