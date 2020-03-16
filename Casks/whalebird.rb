cask 'whalebird' do
  version '3.2.0'
  sha256 '51b8dfcdaf5fc7c0b9ee863bb3c09b5468fee7cf0863dfca56f9956d1fa5a90c'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
