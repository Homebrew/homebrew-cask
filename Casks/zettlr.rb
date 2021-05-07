cask "zettlr" do
  version "1.8.8"

  if Hardware::CPU.intel?
    sha256 "0045e9ef42d327b0c2329e6e09db8fdc6b520ee9a211bf096abfa7e13605a562"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-x64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  else
    sha256 "e11fd5dbff090bca431bfb5f4cf86e7385f9dc24152895685794596e7d2b57ea"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-arm64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  end

  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://www.zettlr.com/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
