cask :v1 => 'the-tagger' do
  version :latest
  sha256 :no_check

  url 'http://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  name 'The Tagger'
  appcast 'http://deadbeatsw.com/thetagger/appcast.xml',
          :sha256 => '41ea65403b2a02ddda76e9e43bb0bdc510113d6988572c2cb83860f9ba747291'
  homepage 'http://deadbeatsw.com/thetagger/'
  license :commercial

  app 'The Tagger.app'
end
