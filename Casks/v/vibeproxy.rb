cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.343"
  sha256 arm:   "ce51d3555e05280afd3abe246117ce7c96fe7610e03af13bc86da36d534d0cba",
         intel: "2bfacfcd76d7f03ca8cfb18a3281f8cc933918f5de5e38d0dc6045325dcfa539"

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
