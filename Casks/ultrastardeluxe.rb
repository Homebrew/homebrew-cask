cask 'ultrastardeluxe' do
  version '1.1'
  sha256 '18e36476ec6994b1dd54e6272c08ceb86b10abf4984a18d834003e696153ca9b'

  url "https://downloads.sourceforge.net/ultrastardx/UltraStarDeluxe-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/ultrastardx/rss',
          checkpoint: 'dd1bec8628b622ea9f1106c9f05275aa39f9f3c1d376f9811917dfb69222c223'
  name 'UltraStar Deluxe'
  homepage 'http://ultrastardx.sourceforge.net/'

  app 'UltraStarDeluxe.app'
end
