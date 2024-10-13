cask "yemuzip" do
  version "2.5"
  sha256 "9c97ac9a715857dc8679b0e1d7fbddb253b0f56275641be2cd9a47b45bd29727"

  url "https://yellowmug.com/download/YemuZip_#{version}.dmg"
  name "YemuZip"
  homepage "https://yellowmug.com/yemuzip/"

  deprecate! date: "2024-10-12", because: :unmaintained

  app "YemuZip.app"

  caveats do
    requires_rosetta
  end
end
