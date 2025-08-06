cask "wannianli" do
  version "2019-12-06"
  sha256 "702298f34ca2576a02388a4103fc0e09a4aae753df21ca2e012f6f87497db6e9"

  url "https://github.com/zfdang/chinese-lunar-calendar-for-mac/releases/download/#{version}/WanNianLi.app-v#{version.no_hyphens}.zip"
  name "WanNianLi"
  desc "Chinese lunar calendar on the menu bar"
  homepage "https://github.com/zfdang/chinese-lunar-calendar-for-mac/"

  depends_on macos: ">= :el_capitan"

  app "WanNianLi.app"

  zap trash: "~/Library/Application Support/com.zfdang.calendar"

  caveats do
    requires_rosetta
  end
end
