cask 'tweeten' do
  version '4.3.4'
  sha256 'd6e2cc3910bf9ed0ac3b3bf32749cb8d5c2d68004964fb5669a143c462447e68'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: '4fe100db9b821e355413a908a14151cac89112c5a72d8f5bb45843824a2dd6e0'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
