cask 'whalebird' do
  version '4.2.0'
  sha256 '152bc4d3cb9a3e0456ab833b9b634ca02d936d0e4a51ffc319e43d27a2d8e9e4'

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
