cask "wonderfultools-screensaver" do
  version "1.0"
  sha256 :no_check

  url "https://github.com/aidev1065/Wonderful-Tools-Screensaver/raw/master/WonderfulTools.saver.zip"
  name "Wonderful Tools Screensaver"
  desc "Screensaver based on opening video from Apple's September 2019 event"
  homepage "https://github.com/aidev1065/Wonderful-Tools-Screensaver/"

  disable! date: "2024-12-16", because: :discontinued

  screen_saver "WonderfulTools.saver"

  zap trash: "~/Library/Caches/WonderfulTools"
end
