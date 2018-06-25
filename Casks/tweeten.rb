cask 'tweeten' do
  version '4.4.1'
  sha256 '1dae37a6adf97d4e1fdcccd69c365187147ce5428905dd01e6d6ebf3592e5af3'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
