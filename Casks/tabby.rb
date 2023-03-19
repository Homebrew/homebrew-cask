cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.192"
  sha256 arm:   "16b17688c3af20b82d40831edf736817e013951ca2b7342aca6f4c057cf0dd88",
         intel: "ec68d925515533aa878044ed38d88d32bdd4789ad1b36f9d71b6fa406748329e"

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
