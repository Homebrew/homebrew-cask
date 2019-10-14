cask 'wings3d' do
  version '2.2.4'
  sha256 '98fabb066efd6c4ad151a648945db73bdda42d923fd4bfbb6b9569311bc102d9'

  # sourceforge.net/wings was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/wings/rss'
  name 'Wings 3D'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D.app'
end
