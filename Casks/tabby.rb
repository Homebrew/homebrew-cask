cask "tabby" do
  version "1.0.152"

  if Hardware::CPU.intel?
    sha256 "e168ebde509f8c4d1ee780146fbcdc454e62be1af92162e56f01f3827881105f"

    url "https://github.com/Eugeny/tabby/releases/download/v#{version}/tabby-#{version}-macos-x86_64.zip",
        verified: "github.com/Eugeny/tabby/"
  else
    sha256 "7db3920eb98ea2859ae8ce6b65e50d4f536a5f7f00868a8b7bdfe8d5bd8e3515"

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
