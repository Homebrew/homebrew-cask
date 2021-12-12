cask "tinderbox" do
  version "9.1.0"
  sha256 "606cf2bc03abb5b803a390b5981d7f3bd462220df3d1b6c1d2d0b0e83d313ea2"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualize and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Now available:.*?Tinderbox\s+v?(\d+(?:\.\d+)+)[<\s]/im)
  end

  depends_on macos: ">= :high_sierra"

  app "Tinderbox #{version.major}.app"
end
