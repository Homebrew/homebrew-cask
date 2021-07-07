cask "webviewscreensaver" do
  version "2.2"
  sha256 "0b67907739674bc0294ad659e1ccc7db0b139c3d694b8d552bf27ef0fb623591"

  url "https://github.com/liquidx/webviewscreensaver/releases/download/v#{version}/WebViewScreenSaver-#{version}.zip"
  name "WebViewScreenSaver"
  desc "Screen saver that displays web pages"
  homepage "https://github.com/liquidx/webviewscreensaver"

  livecheck do
    url :url
    strategy :github_latest
  end

  screen_saver "WebViewScreenSaver.saver"

  postflight do
    if (MacOS.version >= :big_sur) && Hardware::CPU.arm?
      binary = "#{ENV["HOME"]}/Library/Screen Savers/WebViewScreenSaver.saver"
      odebug "Codesigning #{binary}"
      quiet_system("codesign", "--sign", "-", "--force", binary)
    end
  end
end
