cask 'whalebird' do
  version '4.0.1'
  sha256 '4a72362012bc031bd190d21794c1947f0466990e59ecc2a885e765dbee5cbe2d'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
