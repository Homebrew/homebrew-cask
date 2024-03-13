cask "webviewscreensaver" do
  version "2.3"
  sha256 "b92d5f4c4682554c202b5342782bf963a06718b4229187a55ba865216830a9ae"

  url "https://github.com/liquidx/webviewscreensaver/releases/download/v#{version}/WebViewScreenSaver-#{version}.zip"
  name "WebViewScreenSaver"
  desc "Screen saver that displays web pages"
  homepage "https://github.com/liquidx/webviewscreensaver"

  livecheck do
    url :url
    strategy :github_latest
  end

  screen_saver "WebViewScreenSaver.saver"

  zap trash: [
    "~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/WebViewScreenSaver.*",
    "~/Library/Preferences/ByHost/WebViewScreenSaver.*",
    "~/Library/Screen Savers/WebViewScreenSaver.saver",
  ]
end
