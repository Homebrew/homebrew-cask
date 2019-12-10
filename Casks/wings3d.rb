cask 'wings3d' do
  version '2.2.5'
  sha256 'c0a86eeeac4ad00c61d4add386b092cf1595a3412dd6b92312d85f727f97340c'

  # sourceforge.net/wings was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/wings/rss'
  name 'Wings 3D'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D.app'
end
