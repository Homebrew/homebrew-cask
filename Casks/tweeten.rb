cask 'tweeten' do
  version '4.6.8'
  sha256 'c7ec45ca254f7570c0531c5d970e8da6ba8229b06cdab22968793342e2ed5927'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
