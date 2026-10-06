cask "yonder" do
  version "1.823.0"
  sha256 "419e7b1561459026d32ddd070865cbbc67fdecd1c5c1e4309db0714217bc443d"

  url "https://download.yonder.so/Yonder-#{version}.dmg"
  name "Yonder"
  desc "Voice front end for Claude Code"
  homepage "https://yonder.so/"

  livecheck do
    url "https://download.yonder.so/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on :macos

  app "Yonder.app"

  zap trash: [
    "~/.config/yonder",
    "~/Library/Caches/com.vladartym.yonder",
    "~/Library/Preferences/com.vladartym.yonder.plist",
    "~/Library/WebKit/com.vladartym.yonder",
  ]
end
