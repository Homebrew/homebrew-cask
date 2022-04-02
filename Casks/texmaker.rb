cask "texmaker" do
  version "5.1.2"
  sha256 "91c0f4acf58b21199852e3c90555ad223d4fd99c315e6a72f12fc2d293affde4"

  url "https://www.xm1math.net/texmaker/assets/files/texmaker-#{version}.dmg"
  name "Texmaker"
  desc "LaTeX editor"
  homepage "https://www.xm1math.net/texmaker/"

  livecheck do
    url "https://www.xm1math.net/texmaker/download.html"
    regex(%r{href=.*?/texmaker-(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "texmaker.app"

  zap trash: [
    "~/Library/Preferences/texmaker.plist",
    "~/Library/Saved Application State/texmaker.savedState",
  ]
end
