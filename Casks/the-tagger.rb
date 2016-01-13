cask 'the-tagger' do
  version '1.6.1'
  sha256 '51ef8424ae4f6c7e53159e665d87067ce43dd9be3cfc2e7c18efd0f717375b9c'

  url 'http://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  appcast 'http://deadbeatsw.com/thetagger/appcast.xml',
          :checkpoint => '5c637096309217850b868d4ad34addba477aa4bb02d7d7c6371f64340018de3d'
  name 'The Tagger'
  homepage 'http://deadbeatsw.com/thetagger/'
  license :commercial

  app 'The Tagger.app'
end
