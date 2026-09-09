cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.292"
  sha256 arm:   "a3da267b9094b5c6971c24db230662da4ef7cdede4858d6e4a2f4c31ecbedb39",
         intel: "3ddc85f2ada3e5d07ef5e63b168f19485b6155462611a156d9dacd128d602afe"

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
