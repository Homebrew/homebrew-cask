cask "tabby" do
  version "1.0.157"

  if Hardware::CPU.intel?
    sha256 "3eb57c11bf3c1d3137a8d09939c8f38b6d84f9d084d1623991aec05ac2cf25c9"

    url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/tabby/"
  else
    sha256 "454124b5195bfe7ab5fad8d370fceb103550599c34856d413fe013c54739b77a"

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
