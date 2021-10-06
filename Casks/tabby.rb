cask "tabby" do
  version "1.0.158"

  if Hardware::CPU.intel?
    sha256 "490745d01072c95572d42e34ea1a0152c14ea8d5301c2c66c2cbc13a78ee2d20"

    url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/tabby/"
  else
    sha256 "9532a4be4e6da4b94cc57d3c0158407a7eac5ed43510d315657a37a07830280a"

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
