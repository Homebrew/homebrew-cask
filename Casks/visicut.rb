cask 'visicut' do
  version '1.9-12-g0062f436'
  sha256 'eeac3c62c937d9ecaf9130bdb93a7f4a6daa1f290fa9e0a2254b1597b939ecfa'

  url "https://download.visicut.org/files/master/MacOSX/VisiCutMac-#{version}.zip"
  appcast 'https://download.visicut.org'
  name 'VisiCut'
  homepage 'https://visicut.org/'

  app 'VisiCut.app'
end
