cask 'whalebird' do
  version '2.5.3'
  sha256 'dec1b2075051d0de26c3ad1e80f234629d543ebc54bfd347f035ad40d1199011'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
