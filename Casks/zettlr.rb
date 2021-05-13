cask "zettlr" do
  version "1.8.9"

  if Hardware::CPU.intel?
    sha256 "4030d9b3a6f7fd7b7fc8a033f4512b09671965293821f892ae4a5554b5f22150"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-x64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  else
    sha256 "9308a45a7f0b84f55cef26d8004d3e9a48224fe41eaa8490853cbe3295f36ee6"
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
