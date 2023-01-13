cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.188"
  sha256 arm:   "457dd9f4fc4e5dfa3aa1ac857430d9c8c33713a3c454cd72d9e3f1afecb4fa3b",
         intel: "ea8adc451d19beafd9de3540cc882467b5d1efa00696367572bb7c9d64496ca5"

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
