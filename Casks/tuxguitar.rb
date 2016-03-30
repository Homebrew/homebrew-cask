cask 'tuxguitar' do
  version '1.2'
  sha256 '2d79ffdfdde9205073fdaa1c34701ea8f1961f822709b5270dc57555eb926d16'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/tuxguitar/TuxGuitar/TuxGuitar-#{version}/tuxguitar-#{version}-macosx10.5-cocoa-64.dmg"
  name 'TuxGuitar'
  homepage 'http://www.tuxguitar.com.ar/'
  license :gpl

  app 'Tuxguitar.app'
end
