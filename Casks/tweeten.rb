cask 'tweeten' do
  version '4.3.1'
  sha256 'bf3f49cf4fd81a65b3f7dcde68f7844ac3a22141814d5440bcde92c08d6695b2'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: '2f9b6987c0af0a3ceb9e206f9a4590908838a145b48557973240b226eea9960e'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
