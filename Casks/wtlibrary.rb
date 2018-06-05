cask 'wtlibrary' do
  version '1.12.1'
  sha256 '5d2f4a2e5b25bf18125bcec7c4fe2662d213c0a696e5b6bc09ec60f7d6ef7867'

  # downloads.sourceforge.net/wtlibrary was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wtlibrary/WtLibrary_#{version.dots_to_underscores}.dmg"
  appcast 'https://sourceforge.net/projects/wtlibrary/rss',
          checkpoint: '1b289175f9a987f487c6203f2335a5d036f670dd8b5705743c126217ea651cf5'
  name 'Watchtower Library for Mac'
  homepage 'http://www.wtlibrary.net/'

  app 'WtLibrary.app'
end
