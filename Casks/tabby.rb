cask "tabby" do
  arch arm: "arm64", intel: "x86_64"

  version "1.0.196"
  sha256 arm:   "4bda3f89516bfa7627a9a26709350d7f12fe3a21ae8f9b634a678d8ee9a3f923",
         intel: "23a08903b9eddaa503e59e654db3664a9abe06f81c9df947f0d7e3bb99458466"

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
