cask 'tweeten' do
  version '4.7.0'
  sha256 '0feb238d2d1ab57ba3bae2949ffb4b3dc7e51f78257dbdde3d00654acb8e1c0b'

  # github.com/MehediH/Tweeten/ was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
