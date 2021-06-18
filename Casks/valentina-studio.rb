cask "valentina-studio" do
  version "11.2.7"
  sha256 "fe5dbe3b93acb616726ba8e3d74e4137fa7f7f69fa1a22ece89c571bcfe7b2cb"

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
