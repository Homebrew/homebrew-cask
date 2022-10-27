cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.185"
  sha256 arm:   "a3fff695f2ddbefab95ad57f3704bbbc524dd0eed766371ee2950155a8864063",
         intel: "6a22bc16e9f95d22d53fb297524ff3b8cf7c6a2c0eb10ff8bbed99a16cba650a"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url "https://github.com/Eugeny/tabby/releases/latest"
    strategy :header_match
  end

  auto_updates true

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
  ]
end
