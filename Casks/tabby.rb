cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.186"
  sha256 arm:   "70c0b45a31931ead4f21ff9ee55ad68b8f373e5f909fe512337e41797d44ecc9",
         intel: "a9d295c5646064813f267aed9bf4b1278fbd93ac5bc26f141784172202dc0b95"

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
