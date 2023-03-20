cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.193"
  sha256 arm:   "5f5bbe910a88f16546682b416031d8ac332e36a2226233715adbe009a1bf1021",
         intel: "c9ae1fa8f0b0d32a93d53ed5b0f248e9fe7e6535b1e0dcf0f35d440d4ea8a5bc"

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
