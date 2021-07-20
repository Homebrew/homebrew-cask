cask "valentina-studio" do
  version "11.3.1"
  sha256 "aa8ed371ed251584dc7cce661ca6c437fb7283f5cfb5315e34bd1df3f81a5d2f"

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
