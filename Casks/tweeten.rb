cask 'tweeten' do
  version '4.6.1'
  sha256 'c64725fdbc0ba68f605d3d7244dab0f8447717e9ea91e8b11ebb7d9c0d184831'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
