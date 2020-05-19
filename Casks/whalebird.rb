cask 'whalebird' do
  version '4.1.1'
  sha256 '7a56bf47bfede61c7275a5d1e98d88839e2d3d19ec47de8f9580b920c65a67a0'

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
