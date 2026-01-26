cask "virtualhostx" do
  version "2021.01.10,1017"
  sha256 "3d86e05f0e4072d1180d06b9126e12c7943ffc6bdce9b754e6a1d417eb18fc0a"

  url "https://download.clickontyler.com/virtualhostx/virtualhostxpro_#{version.csv.second}.zip",
      verified: "download.clickontyler.com/virtualhostx/"
  name "VirtualHostX"
  desc "Local server environment"
  homepage "https://retina.studio/virtualhostx/"

  # The homepage states that "as of November 24, 2021, ...VirtualHostX is sunset
  # as an actively developed product". As of writing (2025-10-04), the Sparkle
  # feed we were checking (https://shine.clickontyler.com/appcast.php?id=45) no
  # longer works because the `shine` subdomain doesn't resolve.
  livecheck do
    skip "No longer developed or maintained"
  end

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
