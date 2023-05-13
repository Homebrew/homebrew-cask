cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.197"
  sha256 arm:   "5796089d87c59f99cac06f547603a7b3bfccfcfebcc1a10e8e55c6152c1d9ba4",
         intel: "e4ff7f0d3404119c1e729cc65dc336bdb9d102cac74cc3e887c6230ef1f61e05"

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
