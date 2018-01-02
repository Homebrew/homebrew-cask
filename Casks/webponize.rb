cask 'webponize' do
  version '2.1.0'
  sha256 'ce394e91d07f636571a2a21cf183993ad9170794877e6744148ff1faf0ded2b3'

  # github.com/webponize/webponize was verified as official when first introduced to the cask
  url 'https://github.com/webponize/webponize/releases/download/v2.1.0/WebPonize.app.zip'
  appcast 'https://webponize.org/appcast.xml',
          checkpoint: '8447933d59c9a69610b891ff4ba95f02ba057b987d9058702f554658d3e9d395'
  name 'WebPonize'
  homepage 'https://webponize.org/'

  app 'WebPonize.app'
end
