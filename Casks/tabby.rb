cask "tabby" do
  version "1.0.155"

  if Hardware::CPU.intel?
    sha256 "f0d6358cf340e3b1c2b847db8e0b9a0fdc9b29c035574f11cef43e4ef84f5617"

    url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/tabby/"
  else
    sha256 "47fb72d97cdac5092e7d717ab9e4dd212d449124ef2e04d6d6fd325e2d3a1564"

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
