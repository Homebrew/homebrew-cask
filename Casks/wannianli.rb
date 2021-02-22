cask "wannianli" do
  version "2019-12-06"
  sha256 "702298f34ca2576a02388a4103fc0e09a4aae753df21ca2e012f6f87497db6e9"

  url "https://github.com/zfdang/chinese-lunar-calendar-for-mac/releases/download/2019-12-06/WanNianLi.app-v#{version.no_hyphens}.zip",
      verified: "github.com/zfdang/chinese-lunar-calendar-for-mac/"
  name "WanNianLi"
  desc "Chinese Lunar Calendar Status Bar Widget"
  homepage "https://github.com/zfdang/chinese-lunar-calendar-for-mac/"

  depends_on macos: ">= :el_capitan"

  app "WanNianLi.app"

  zap trash: "~/Library/Application Support/com.zfdang.calendar"
end
