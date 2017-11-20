cask 'tweeten' do
  version '4.2.0'
  sha256 'c3ee245fe9b6dfd6493f0a217c69b5c6e31760cbf77b712c3a7cedfcb0ebb922'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'da87798850fb9277c9eb562bede34429710c24bc1680f35d37aa4ecba36b154e'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
