cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.191"
  sha256 arm:   "a38f895a8a244fb41d585eea752d6f7b6c61a055a3fc22320c98d2bef4618077",
         intel: "d5e51dcf99d28b21a10f3bd5f1917b217c921e76ff4f07fca8c3091f925c5e92"

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
