cask "texmaker" do
  version "5.0.4"
  sha256 "3ff64e0993b91fd19b5ecb8f48c2004e86bf125b2334aca5c2a20abef27424d3"

  url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  appcast "https://www.xm1math.net/texmaker/assets/files/"
  name "Texmaker"
  desc "Free, modern and cross-platform LaTeX editor"
  homepage "https://www.xm1math.net/texmaker/"

  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]
end
