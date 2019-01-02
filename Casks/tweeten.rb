cask 'tweeten' do
  version '4.6.6'
  sha256 '13b6be978837b7c820ecdb56f8a1f2b00df547c9844fb3cfc5640a64fe287c3c'

  # github.com/MehediH/Tweeten was verified as official when first introduced to the cask
  url "https://github.com/MehediH/Tweeten/releases/download/v#{version}/tweeten-darwin-x64.zip"
  appcast 'https://github.com/MehediH/Tweeten/releases.atom'
  name 'Tweeten'
  homepage 'https://tweetenapp.com/'

  app 'Tweeten.app'
end
