cask 'veusz' do
  version '3.2'
  sha256 '3acc96082ab0fe22b8caa8e78654c3afe4bd32e2df4d38b3b171c22686227471'

  # github.com/veusz/veusz was verified as official when first introduced to the cask
  url "https://github.com/veusz/veusz/releases/download/veusz-#{version}/veusz-#{version}-AppleOSX.dmg"
  appcast 'https://github.com/veusz/veusz/releases.atom'
  name 'Veusz'
  homepage 'https://veusz.github.io/'

  app 'Veusz.app'
end
