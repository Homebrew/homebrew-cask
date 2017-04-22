cask 'tweeten' do
  version '3.3.5'
  sha256 '4ec2ee9d144ea944ebab61f812618c19cd03dc6fde9d46d8d3bc9ae82a0e7ff7'

  # github.com/MehediH/TweetenSite was verified as official when first introduced to the cask
  url "https://github.com/MehediH/TweetenSite/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/TweetenSite/releases.atom',
          checkpoint: 'fecfcb09ea664c7eac19e82c5dff08477ae643c1a539457418c7dd2a132275dc'
  name 'Tweeten'
  homepage 'http://tweeten.xyz/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
