cask 'tuxguitar' do
  version '1.2'
  sha256 '2d79ffdfdde9205073fdaa1c34701ea8f1961f822709b5270dc57555eb926d16'

  # sourceforge.net/tuxguitar was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tuxguitar/TuxGuitar/TuxGuitar-#{version}/tuxguitar-#{version}-macosx10.5-cocoa-64.dmg"
  appcast 'https://sourceforge.net/projects/tuxguitar/rss?path=TuxGuitar',
          checkpoint: 'fe05b4d205c52ad0b80ae2e874ea6e2f12f41b887a844c0c2ed3bc787bcef3f9'
  name 'TuxGuitar'
  homepage 'http://www.tuxguitar.com.ar/'

  app 'Tuxguitar.app'
end
