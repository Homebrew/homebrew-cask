cask "texmaker" do
  version "5.0.4"
  sha256 "3ff64e0993b91fd19b5ecb8f48c2004e86bf125b2334aca5c2a20abef27424d3"

  url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  name "Texmaker"
  desc "LaTeX editor"
  homepage "https://www.xm1math.net/texmaker/"

  livecheck do
    url "https://www.xm1math.net/texmaker/download.html"
    strategy :page_match
    regex(%r{href=.*?/texmaker-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]
end
