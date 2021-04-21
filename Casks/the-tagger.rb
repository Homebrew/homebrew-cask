cask "the-tagger" do
  version "1.6.2"
  sha256 :no_check

  url "https://deadbeatsw.com/thetagger/TheTaggerLatest.zip"
  name "The Tagger"
  homepage "https://deadbeatsw.com/thetagger/"

  livecheck do
    url "https://deadbeatsw.com/thetagger/appcast.xml"
    strategy :sparkle
  end

  app "The Tagger.app"
end
