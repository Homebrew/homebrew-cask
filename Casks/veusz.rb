cask 'veusz' do
  version '3.0.1'
  sha256 '70fe6d61be9d49628422c7cb5177095fedbad95e04de7c9a398a22f77adaad3a'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
