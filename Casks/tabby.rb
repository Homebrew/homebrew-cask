cask "tabby" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "1.0.178"

  if Hardware::CPU.intel?
    sha256 "79fbb5e0b2b91fb1a658ce217dfa0945d1c1326c792e0ed8384e6931daaca270"
  else
    sha256 "4531b3df34beb75150f16ee25e3087d6561d801f115529a2de9e0d28923488c0"
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
