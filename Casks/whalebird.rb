cask 'whalebird' do
  version '2.8.4'
  sha256 'f0f3b94d96fc19c21f828cab5f02170908775555f8c5f1b634417fb981c9edd3'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
