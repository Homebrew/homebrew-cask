cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.189"
  sha256 arm:   "bb62454f3666b7822e92a62fa782a584781f91653cd39cb6fb8c5d8fa2a61704",
         intel: "bb7b85162362b66494f968cb6f20c22196de799c9510b16971498b35f3ec778b"

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
