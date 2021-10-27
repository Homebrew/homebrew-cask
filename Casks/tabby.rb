cask "tabby" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.0.159"

  url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-#{arch}.zip",
      verified: "github.com/Eugeny/tabby/"
  if Hardware::CPU.intel?
    sha256 "1fc3e8e9297e9c8ba6481e66947bc4f17902ed4ddc090ccbb20f2dc385e3f155"
  else
    sha256 "0f3e85e6f236216d8ac1d5e3f4dcd680cb18264da04d3235d885359e1068d4eb"
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
