cask 'wings3d' do
  version '2.1.5'
  sha256 '4677a0f744378e88125ffe1f3595170cb77ddb9ff94cdd594e3578a0ca28bc73'

  # sourceforge.net/wings was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast 'https://sourceforge.net/projects/wings/rss',
          checkpoint: 'ecd54f678a1790ea55882e7ac25e82ae1f42e310e7553f774a26f0471e9284db'
  name 'Wings 3D'
  homepage 'http://www.wings3d.com/'

  app 'Wings3D.app'
end
