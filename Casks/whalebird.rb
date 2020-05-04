cask 'whalebird' do
  version '4.1.0'
  sha256 'a3a6fefe2559db3138f12171fc0ce04992775b3bc052758885734d0cc88c70bd'

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
