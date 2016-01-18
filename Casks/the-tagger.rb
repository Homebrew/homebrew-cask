cask 'the-tagger' do
  version '1.6.1'
  sha256 '51ef8424ae4f6c7e53159e665d87067ce43dd9be3cfc2e7c18efd0f717375b9c'

  url 'http://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  appcast 'http://deadbeatsw.com/thetagger/appcast.xml',
          checkpoint: 'dad3dd5d7fddb361fd75d449ada6982d291a204cf044fc0ac9172f225739fd18'
  name 'The Tagger'
  homepage 'http://deadbeatsw.com/thetagger/'
  license :commercial

  app 'The Tagger.app'
end
