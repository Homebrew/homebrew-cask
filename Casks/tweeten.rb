cask 'tweeten' do
  version '4.4.0'
  sha256 'a918e5503fb9bf69925eedcdc5635a3ff611f0a40d96d83fa7f53039c697efd1'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'cc440764d09b1d4807fcfa06a20dcc022499953ef2fca60d3a357c27f4ef6e71'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
