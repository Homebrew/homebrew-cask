cask "tinderbox" do
  version "9.5.2"
  sha256 "775136b3b0de3c38efdf692f7ba5cf952a4279a7fbbea9d03ec62d7a069d25bf"

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
