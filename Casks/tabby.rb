cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.187"
  sha256 arm:   "1b381980d11d0d50a4b34ffadc8b4ab703701076fbe00a0e480f6a95624dcc7b",
         intel: "723eb5c6749bf7dd00f6cab89b17b9cee866e623053a632ec392fedef99c2ac6"

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
