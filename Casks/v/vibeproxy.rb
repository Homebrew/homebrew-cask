cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.283"
  sha256 arm:   "ec67c2004571d758418be21d0077bb4580c676971490ef5994914b758344be8b",
         intel: "1ab4f0c78110495071f5aa1278640aa8cc1de96256d386f52318502d159ba98f"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.vibeproxy.app",
    "~/Library/Preferences/com.vibeproxy.app.plist",
  ]
end
