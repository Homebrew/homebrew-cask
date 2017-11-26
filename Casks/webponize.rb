cask 'webponize' do
  version '1.2.2'
  sha256 '54b248aa530c259b6bc8ada0a5936591ad2702a43b8099dadc050401577ca1f3'

  # github.com/1000ch/WebPonize was verified as official when first introduced to the cask
  url 'https://github.com/1000ch/WebPonize/raw/master/webponize.tar.gz'
  appcast 'https://raw.githubusercontent.com/1000ch/WebPonize/master/appcast.xml',
          checkpoint: '3e3cfa7b4a7728f3eb45d7b53d04cbd44a2cd5905c65bd01f4eb6b524635face'
  name 'WebPonize'
  homepage 'https://webponize.github.io/'

  app 'WebPonize.app'
end
