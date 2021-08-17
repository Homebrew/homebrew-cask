cask "texmaker" do
  version "5.1.0"
  sha256 "341fb896d321024b14f7a85ddfacd793110b47663327b29bec27f08d70097a23"

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
