cask "yep" do
  version "4.0.4,404.101"
  sha256 :no_check

  url "https://www.ironicsoftware.com/downloads/Yep.zip"
  name "Yep"
  desc "Document manager"
  homepage "https://www.ironicsoftware.com/yep/"

  livecheck do
    url "https://ironicsoftware.com/downloads/yep.xml"
    strategy :sparkle
  end

  app "Yep.app"
end
