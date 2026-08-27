cask "yapstack" do
  version "1.0.0"
  sha256 "2376842edf6d691cb04f194ea7183253d58e767ae9ae9a61bc02527db83dde77"

  url "https://github.com/yapstackai/yapstack-releases/releases/download/v#{version}/yapstack_aarch64-dmg.dmg"
  name "YapStack"
  desc "Cloud speech-to-text desktop app powered by Cove"
  homepage "https://github.com/yapstackai/yapstack-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :catalina
  depends_on arch: :arm64

  app "YapStack.app"

  zap trash: [
    "~/Library/Application Support/com.yapstack.app",
    "~/Library/Logs/com.yapstack.app",
    "~/Library/Preferences/com.yapstack.app.plist",
  ]
end
