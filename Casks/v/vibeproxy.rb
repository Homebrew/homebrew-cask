cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.227"
  sha256 arm:   "7661b6a985f47a8a4e281267f1a3c71aff2aed5367d7ca52e428bcf92469f10a",
         intel: "74efb63f82d76d1740f269801c5d93c7603611db9586238250d7167391af25d9"

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

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
