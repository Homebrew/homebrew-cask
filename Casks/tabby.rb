cask "tabby" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.0.168"

  if Hardware::CPU.intel?
    sha256 "d0183d224af4cda862e4198fb5d835b4c8e3c1f7806de27023ec405ad327301b"
  else
    sha256 "07aa9aabcdafcf5b1c41be24cb6db73cc0f2346b49d927f12100589adbf2aeeb"
  end

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

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
  ]
end
