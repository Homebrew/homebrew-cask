cask 'tweeten' do
  version '4.6.3'
  sha256 'c8814e1ab3a92df5a22ff8007cd4a26a8163729b06398c0b6b3f8f5da305963c'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
