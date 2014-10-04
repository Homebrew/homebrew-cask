class Texts < Cask
  version '0.21'
  sha256 '45bc3294716e7f8624495ee370e949ddc5f0d9bd11d01acf8e6b9c1435ebb989'

  url "http://www.texts.io/Texts-#{version}.dmg"
  appcast 'http://www.texts.io/appcast-osx.xml'
  homepage 'http://www.texts.io'
  license :unknown

  app 'Texts.app'
end
