cask 'tweeten' do
  version '4.0.3'
  sha256 '4aebecef707c27f63491dca8f1c44b7ed7f72fd4dfab23213b8e2cd1dafb2498'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: '5070efadbd26c4d6793514a961f6f282f6c2c6f0539d99c654dd026f67d03a68'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
