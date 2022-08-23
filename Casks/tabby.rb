cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.183"
  sha256 arm:   "cfef3fd184b1bdf5070b5aec7dbeae3aa835f624a233e90e200170d51c7ef5a9",
         intel: "43ba5fb3d776f2d2ed1128c377aaa9d3420d792579cc9389c32e75b1f9c87a6c"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  name "Tabby"
  name "Terminus"
  desc "Terminal emulator, SSH and serial client"
  homepage "https://eugeny.github.io/tabby/"

  livecheck do
    url :url
    strategy :github_latest
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
