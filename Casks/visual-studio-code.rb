cask 'visual-studio-code' do
  version '45d69357c9eb068dd8e624f5b0fe461cd2078d88'
  sha256 '0e415a0a32b584895fd635c368fb7e3c440afdbe94d4b284e04ddcccfc2e8707'

  # az764295.vo.msecnd.net was verified as official when first introduced to the cask
  url "https://az764295.vo.msecnd.net/stable/#{version}/VSCode-darwin.zip"
  name 'Microsoft Visual Studio Code'
  name 'VS Code'
  homepage 'https://code.visualstudio.com/'
  license :mit

  auto_updates true

  app 'Visual Studio Code.app'

  zap delete: [
                '~/Library/Application Support/Code',
                '~/Library/Caches/Code',
              ]
end
