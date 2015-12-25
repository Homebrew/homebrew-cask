cask 'the-hit-list' do
  version '1.1.17'
  sha256 '0a6bd16d26c19a27f2146cdba27fc5c8119da8c382643d285203b41fadaebe98'

  url 'http://distrib.karelia.com/downloads/TheHitList-302.zip'
  appcast 'http://launch.karelia.com/appcast.php?product=9&appname=The+Hit+List',
          :sha256 => 'd34151b1e3f683b4d20c74ea1aa19539c607eeb529a3d137e42a8f63525447c4'
  name 'The Hit List'
  homepage 'http://www.karelia.com/products/the-hit-list/mac.html'
  license :commercial

  app 'The Hit List.app'
end
