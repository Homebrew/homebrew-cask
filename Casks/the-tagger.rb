cask :v1 => 'the-tagger' do
  version :latest
  sha256 :no_check

  url 'http://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  name 'The Tagger'
  appcast 'http://deadbeatsw.com/thetagger/appcast.xml',
          :sha256 => 'a705c4355bc47841b153faa39280aa42dcac99d919e82417ce409cdb2a70db92'
  homepage 'http://deadbeatsw.com/thetagger/'
  license :commercial

  app 'The Tagger.app'
end
