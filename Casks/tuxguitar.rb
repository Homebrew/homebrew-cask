cask :v1 => 'tuxguitar' do
  version '1.2'
  sha256 '2d79ffdfdde9205073fdaa1c34701ea8f1961f822709b5270dc57555eb926d16'

  url "https://downloads.sourceforge.net/project/tuxguitar/TuxGuitar/TuxGuitar-#{version}/tuxguitar-#{version}-macosx10.5-cocoa-64.dmg"
  homepage 'http://www.tuxguitar.com.ar/'
  license :oss

  app 'Tuxguitar.app'
end
