cask "tabby" do
  version "1.0.156"

  if Hardware::CPU.intel?
    sha256 "0e9fbd204c39ea255e2a9fe6d569dade3098edcf4cbe481fb5a4ed259fd60f1a"

    url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/tabby/"
  else
    sha256 "6d8049f829b15b7bc957f28ca54a98e37ddb1e1bd22cb4b05db889606dee55a4"

    url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-arm64.zip",
        verified: "github.com/Eugeny/tabby/"
  end

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
