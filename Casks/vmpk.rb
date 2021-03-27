cask "vmpk" do
  version "0.8.1"
  sha256 "9465c053fc5118924063db24952d60302f8125619ae75bc4e17b7be0f6f7548d"

  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/vmpk/"
  appcast "https://sourceforge.net/projects/vmpk/rss"
  name "VMPK"
  homepage "https://vmpk.sourceforge.io/"

  depends_on macos: ">= :sierra"

  app "vmpk.app"
end
