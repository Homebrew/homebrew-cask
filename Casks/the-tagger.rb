cask "the-tagger" do
  version "1.6.2"
  sha256 :no_check

  url "https://deadbeatsw.com/thetagger/TheTaggerLatest.zip"
  appcast "https://deadbeatsw.com/thetagger/appcast.xml"
  name "The Tagger"
  homepage "https://deadbeatsw.com/thetagger/"

  app "The Tagger.app"
end
