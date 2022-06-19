cask "tabby" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.0.181"

  if Hardware::CPU.intel?
    sha256 "f9bb044071a8ecfba7e98919e27e8be645cecb561cf3789feb0e4b69504965d0"
  else
    sha256 "550c2f65f9c2be7b737fed905deddc678548e865e1eb99c98ab33c6dbf21a969"
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
