cask 'tweeten' do
  version '3.3.3'
  sha256 'a533c4ece9f0bb097015981954b4de8f7e7b5678fe8dcb0db966356473a87ba8'

  # github.com/MehediH/TweetenSite was verified as official when first introduced to the cask
  url "https://github.com/MehediH/TweetenSite/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/TweetenSite/releases.atom',
          checkpoint: '4836d480b7464d0c13c23d54bec6fc4890046464159abd6bfad9170ea5683451'
  name 'Tweeten'
  homepage 'http://tweeten.xyz/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
