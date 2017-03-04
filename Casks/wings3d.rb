cask 'wings3d' do
  version '2.1.5'
  sha256 '4677a0f744378e88125ffe1f3595170cb77ddb9ff94cdd594e3578a0ca28bc73'

  # sourceforge.net/wings was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/wings/rss',
          checkpoint: '38311ee2ef58ca6eabc963cef085649faf357fd90662208308a572048d64920c'
  name 'Wings 3D'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D.app'
end
