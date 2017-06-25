cask 'tweeten' do
  version '4.0.0'
  sha256 '060a03cf397af3e0e1937b4c8eb4319b1540d25e0e920de94f5d353d949427cc'

  # github.com/MehediH/TweetenSite was verified as official when first introduced to the cask
  url "https://github.com/MehediH/TweetenSite/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/TweetenSite/releases.atom',
          checkpoint: 'd337261a136a37c1d6f084599928721222ddae3c7d90e00f1d661b063209153b'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
