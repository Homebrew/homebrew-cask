cask "zettlr" do
  version "1.8.7"

  if Hardware::CPU.intel?
    sha256 "b387580300b0f37767b7cf66abb74034c0386ba87d71504d818e8d74acd4d200"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-x64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  else
    sha256 "0ac726e7bbfe2bb8378b555b2ea9d47165c71fbc94aef3aa1a69308f2989ddff"
    url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}-arm64.dmg",
        verified: "github.com/Zettlr/Zettlr/"
  end

  appcast "https://github.com/Zettlr/Zettlr/releases.atom"
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
