cask "texmaker" do
  version "5.1.4"
  sha256 "d28fe0d8dee823ed4d1156e47f9a2b4b5af887464a05e29e9ee5d57c12e1e1fe"

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
