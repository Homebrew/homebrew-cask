cask "valentina-studio" do
  version "11.4.7"
  sha256 "525c2300ef7c2283807527d235d2e4921cb1deab3c35017618286abaa8fba13e"

  url "https://valentina-db.com/download/prev_releases/#{version}/mac_64/vstudio_x64_#{version.major}_mac.dmg"
  name "Valentina Studio"
  desc "Visual editors for data"
  homepage "https://valentina-db.com/en/valentina-studio-overview"

  livecheck do
    url "https://valentina-db.com/en/all-downloads/vstudio"
    regex(%r{href=['"]?/en/all-downloads/vstudio/current['"]?>\s*(\d+(?:\.\d+)+)}i)
  end

  app "Valentina Studio.app"
end
