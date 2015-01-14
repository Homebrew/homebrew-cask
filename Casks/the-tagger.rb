cask :v1 => 'the-tagger' do
  version :latest
  sha256 :no_check

  url 'http://deadbeatsw.com/thetagger/TheTaggerLatest.zip'
  name 'The Tagger'
  homepage 'http://deadbeatsw.com/thetagger/'
  license :commercial

  app 'The Tagger.app'
end
