cask 'tweeten' do
  version '4.3.2'
  sha256 '60666170e9454c7e0cd21bf8af7e01a06a6c4cf6c7a43c1d7ce253651ef372a3'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'cb97e4669a6002fcf3e678e706007ce8c0beab2b9b8a8e09b7abfef543d60176'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
