cask "tabby" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.0.177"

  if Hardware::CPU.intel?
    sha256 "030deea0ad2caafba2dee8129d32ac93fc2f793d03e209810a70f44d8d940a0d"
  else
    sha256 "f5ded72c80e6d5aebd74c48cb5a62f1e4c19e5c1a9e0e708167ae7e581f08725"
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

  auto_updates true

  app "Tabby.app"

  zap trash: [
    "~/Library/Application Support/tabby",
    "~/Library/Preferences/org.tabby.helper.plist",
    "~/Library/Preferences/org.tabby.plist",
    "~/Library/Saved Application State/org.tabby.savedState",
  ]
end
