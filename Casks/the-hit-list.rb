cask 'the-hit-list' do
  version '1.1.22,326'
  sha256 '3d936a8ab0be0c44f7edabcaba07609b14f0c334f064efd4cac6c13f74bf9257'

  url "https://distrib.karelia.com/downloads/TheHitList-#{version.after_comma}.zip"
  appcast 'https://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          checkpoint: '2d612c5ac665ba09f68e0d4f6d98502b926e508ffec674ab7a77765140a13dce'
  name 'The Hit List'
  homepage 'https://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
