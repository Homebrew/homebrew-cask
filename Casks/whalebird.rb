cask 'whalebird' do
  version '2.8.5'
  sha256 'c26cd762ff17f5c87e9d7cd19fc7857c0c77c486aa53066a9d98dc0cc4d269bd'

  # github.com/h3poteto/whalebird-desktop was verified as official when first introduced to the cask
  url "https://github.com/h3poteto/whalebird-desktop/releases/download/#{version}/Whalebird-#{version}-darwin-x64.dmg"
  appcast 'https://github.com/h3poteto/whalebird-desktop/releases.atom'
  name 'Whalebird'
  homepage 'https://whalebird.org/'

  app 'Whalebird.app'
end
