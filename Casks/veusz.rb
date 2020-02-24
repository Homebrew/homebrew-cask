cask 'veusz' do
  version '3.1'
  sha256 '468dd2af4dab24342b9180cdf5ea31d7119ba9db853eba3fabf8143be3f20695'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
