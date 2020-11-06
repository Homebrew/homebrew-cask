cask "wonderfultools-screensaver" do
  version "1.0"
  sha256 "8a61ffa9c633a937dab58d2825ef41b04c1e3f2b76090a9c5008ed30241c1af6"

  url "https://github.com/aidev1065/Wonderful-Tools-Screensaver/raw/master/WonderfulTools.saver.zip"
  name "Wonderful Tools Screensaver"
  homepage "https://github.com/aidev1065/Wonderful-Tools-Screensaver/"

  screen_saver "WonderfulTools.saver"

  zap trash: "~/Library/Caches/WonderfulTools"
end
