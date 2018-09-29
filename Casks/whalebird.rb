cask 'whalebird' do
  version '2.3.1'
  sha256 '452a9541c5133c78cb98e4846c7496f1042bea7b8d3c3c9c3d33439da67e3d95'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
