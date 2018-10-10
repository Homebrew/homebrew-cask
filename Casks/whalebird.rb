cask 'whalebird' do
  version '2.4.0'
  sha256 'e434b4dd53f2b637fc3d6f76a015ebe69757ad3dbf3ec54f9170fcf90924c0ee'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
