cask "valentina-studio" do
  version "11.2.6"
  sha256 :no_check

  url "https://valentina-db.com/en/all-downloads/vstudio/current/vstudio_mac_x64-dmg?format=raw"
  name "Valentina Studio"
  desc "Visual editors for data"
  homepage "https://valentina-db.com/en/valentina-studio-overview"

  livecheck do
    url "https://valentina-db.com/en/all-downloads/vstudio"
    strategy :page_match
    regex(%r{href=['"]?/en/all-downloads/vstudio/current['"]?>\s*(\d+(?:\.\d+)*)}i)
  end

  app "Valentina Studio.app"
end
