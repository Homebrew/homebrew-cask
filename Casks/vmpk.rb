cask "vmpk" do
  version "0.8.0.1"
  sha256 "d3ff90bd78320525f23a67c7d216e2cd3df0b02e5c8dbb905084333be006a6d7"

  url "https://downloads.sourceforge.net/vmpk/#{version.major_minor_patch}/vmpk-#{version}-mac-x64.dmg",
      verified: "downloads.sourceforge.net/vmpk/"
  appcast "https://sourceforge.net/projects/vmpk/rss"
  name "VMPK"
  homepage "https://vmpk.sourceforge.io/"

  depends_on macos: ">= :sierra"

  app "vmpk.app"
end
