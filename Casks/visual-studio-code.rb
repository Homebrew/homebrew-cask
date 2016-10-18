cask 'visual-studio-code' do
  version '1.6.1,9e4e44c19e393803e2b05fe2323cf4ed7e36880e'
  sha256 'a90ba8c8226f3a4e848796e7b1ad74410e8ad934fc6b726671f30e0a16aae202'

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
