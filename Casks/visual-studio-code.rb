cask 'visual-studio-code' do
  version '1.0.0,fa6d0f03813dfb9df4589c30121e9fcffa8a8ec8'
  sha256 '78b698bbc3968d64e30e056481ef32994f8aa66c934a62065dddbfed240d641a'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  auto_updates true

  app 'Visual Studio Code.app'
  binary 'Visual Studio Code.app/Contents/Resources/app/bin/code'

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
