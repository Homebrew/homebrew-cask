cask "virtualhostx" do
  version "2021.01.10,1017"
  sha256 "3d86e05f0e4072d1180d06b9126e12c7943ffc6bdce9b754e6a1d417eb18fc0a"

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.csv.second}.zip"
  name "VirtualHostX"
  desc "Local server environment"
  homepage "https://retina.studio/virtualhostx/"

  disable! date: "2026-11-08", because: :discontinued

  depends_on :macos

  app "VirtualHostX.app"

  zap trash: [
    "~/Library/Application Support/com.clickontyler.VirtualHostX",
    "~/Library/Application Support/VirtualHostX",
    "~/Library/Caches/com.clickontyler.VirtualHostX",
    "~/Library/Preferences/com.clickontyler.VirtualHostX.plist",
  ]

  caveats do
    requires_rosetta
  end
end
