cask "wan-nian-li" do
  version :latest
  sha256 :no_check

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
