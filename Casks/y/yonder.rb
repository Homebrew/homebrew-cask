cask "yonder" do
  version "1.876.0"
  sha256 "6f9e28ad410a8bc33bda69b5dcb5b6727c894945fb06800c73e371190c7c5b2f"

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
    "~/Library/Caches/so.yonder.mac",
    "~/Library/Preferences/so.yonder.mac.plist",
    "~/Library/WebKit/so.yonder.mac",
  ]
end
