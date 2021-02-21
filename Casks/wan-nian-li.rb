cask "wan-nian-li" do
  version "2019-12-06"
  sha256 "702298f34ca2576a02388a4103fc0e09a4aae753df21ca2e012f6f87497db6e9"

  url "https://calendar.zfdang.com/WanNianLi.app.zip",
      verified: "calendar.zfdang.com"
  name "WanNianLi"
  desc "Mac下的万年历状态栏小工具"
  homepage "https://github.com/zfdang/chinese-lunar-calendar-for-mac/"

  depends_on macos: ">= :el_capitan"

  app "WanNianLi.app"

  zap trash: [
    "~/Library/Application Support/com.zfdang.calendar",
  ]
end
