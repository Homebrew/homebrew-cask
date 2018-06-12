cask 'veusz' do
  version '2.2.2'
  sha256 '3e927f3afa543dde0dd431ac1d690bd5b7f6b18bf185ce75fd7b12aecf4c6cc9'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
