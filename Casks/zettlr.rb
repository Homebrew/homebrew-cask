cask "zettlr" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "1.8.9"

  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-#{arch}.dmg"
  if Hardware::CPU.intel?
    sha256 "4030d9b3a6f7fd7b7fc8a033f4512b09671965293821f892ae4a5554b5f22150"
  else
    sha256 "9308a45a7f0b84f55cef26d8004d3e9a48224fe41eaa8490853cbe3295f36ee6"
  end

  name "Zettlr"
  desc "Open-source markdown editor"
  homepage "https://github.com/Zettlr/Zettlr/"

  app "Zettlr.app"

  zap trash: [
    "~/Library/Application Support/zettlr",
    "~/Library/Logs/Zettlr",
    "~/Library/Preferences/com.zettlr.app.plist",
    "~/Library/Saved Application State/com.zettlr.app.savedState",
  ]
end
