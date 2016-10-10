cask 'visual-studio-code' do
  version '1.6,e52fb0bc87e6f5c8f144e172639891d8d8c9aa55'
  sha256 '13f054d3971ab4547b4ed7297a7cbbdd1c4035556fe0dd0da9ce194be045f06e'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version.after_comma}/VSCode-darwin-stable.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'

  auto_updates true

  app 'Visual Studio Code.app'
  binary "#{appdir}/Visual Studio Code.app/Contents/Resources/app/bin/code"

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
