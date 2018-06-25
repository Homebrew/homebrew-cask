cask 'wings3d' do
  version '2.1.7'
  sha256 '96556931eff7f1cec26ad3b9b944951b7ae9ed2e070bd724334c2827d11498bc'

  # sourceforge.net/wings was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/wings/rss'
  name 'Wings 3D'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D.app'
end
