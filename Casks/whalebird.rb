cask 'whalebird' do
  version '4.1.3'
  sha256 '74e9c8b0adfe85426497fdbb03b38d86eab8921926a99d01698a9744d0f5462c'

  # github.com/h3poteto/whalebird-desktop/ was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.social/'

  app 'Whalebird.app'
end
