cask 'tweeten' do
  version '4.3.3'
  sha256 '30bd3078bbd3688a00dd5fc2fce6911eb2970295e28af4830d62770321bb1403'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'afc307583ae6ce6b2b66a2d4481318c471805c6862ba45e7bad635b31b13e5b6'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
