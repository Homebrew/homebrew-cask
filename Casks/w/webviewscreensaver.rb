cask "webviewscreensaver" do
  version "2.4"
  sha256 "08467e5723b167c3f0ad93db9757048ccb3e9d5ef34f00fcfb9435360191c5b1"

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
