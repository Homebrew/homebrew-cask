cask 'whalebird' do
  version '2.6.0'
  sha256 '2db518c3c4871e88c9c4a960cf3116da8e90ee7c0cb12b8cd2af94fa8fe4d577'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
