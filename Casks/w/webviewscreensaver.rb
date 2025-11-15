cask "webviewscreensaver" do
  version "2.5"
  sha256 "6a78ae693ff7b166b6f8f8078b0037f0bf9c8020fe33a618e6db3efc26c88936"

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
