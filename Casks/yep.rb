cask "yep" do
  version "4.0.4"
  sha256 :no_check

  url "https://www.ironicsoftware.com/downloads/Yep.zip"
  name "Yep"
  desc "Document manager"
  homepage "https://www.ironicsoftware.com/yep/"

  livecheck do
    url "https://ironicsoftware.com/downloads/yep.xml"
    strategy :sparkle, &:short_version
  end

  app "Yep.app"
end
