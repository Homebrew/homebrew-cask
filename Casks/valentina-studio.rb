cask "valentina-studio" do
  version "11.4.6"
  sha256 "8de11eaae16a060fa7be4af69c1f4fc71b919279b8613ed1c7b47d461a84001c"

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
