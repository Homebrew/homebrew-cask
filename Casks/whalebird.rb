cask 'whalebird' do
  version '2.6.2'
  sha256 '07c3cccf600dd0aeaccd9e5d50842f27f7e0172d8bd478bc48f0fc8c4898f32c'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
