cask 'visual-studio-code' do
  version '1.3.1,e6b4afa53e9c0f54edef1673de9001e9f0f547ae'
  sha256 'e6a00c76cbfae19f57b7e8d8e2d3296f8507703a8a781652613a855191618b53'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  auto_updates true

  app 'Visual Studio Code.app'
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
