cask 'ultrastardeluxe' do
  version '1.1'
  sha256 '18e36476ec6994b1dd54e6272c08ceb86b10abf4984a18d834003e696153ca9b'

  url "https://downloads.sourceforge.net/ultrastardx/UltraStarDeluxe-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/ultrastardx/rss',
          checkpoint: 'c8c913a606b8e18c5b61cd28932cdfb3434ff9b7b98b2a9008b9cead3f84a8ce'
  name 'UltraStar Deluxe'
  homepage 'http://ultrastardx.sourceforge.net/'

  app 'UltraStarDeluxe.app'
end
