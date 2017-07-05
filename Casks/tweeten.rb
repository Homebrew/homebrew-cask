cask 'tweeten' do
  version '4.0.2'
  sha256 '1700d35f74ad3fcb6f557ef8d2a08be8cd4a066f17ed3409f78932edef7894e2'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom',
          checkpoint: 'd8922d634d40f461260552dabb6922a97f68a185dea5e6633493cccb5511d69a'
  name 'Tweeten'
  homepage 'http://tweetenapp.com/'

  app 'tweeten-darwin-x64/Tweeten.app'
end
