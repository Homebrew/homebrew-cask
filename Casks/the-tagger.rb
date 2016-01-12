cask 'the-tagger' do
  version '1.6.1'
  sha256 '51ef8424ae4f6c7e53159e665d87067ce43dd9be3cfc2e7c18efd0f717375b9c'

  url 'http://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  appcast 'http://deadbeatsw.com/thetagger/appcast.xml',
          :sha256 => '41ea65403b2a02ddda76e9e43bb0bdc510113d6988572c2cb83860f9ba747291'
  name 'The Tagger'
  homepage 'http://deadbeatsw.com/thetagger/'
  license :commercial

  app 'The Tagger.app'
end
