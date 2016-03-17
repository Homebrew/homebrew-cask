cask 'visual-studio-code' do
  version '0.10.11,f291f4ad600767626b24a4b15816b04bee9a3049'
  sha256 'fb171e2b83f11ad825a454bc01f6effaeb8f008ab6074516f5a236de9cb6cc34'

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
