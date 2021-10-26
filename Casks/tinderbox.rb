cask "tinderbox" do
  version "9.0.0"
  sha256 "d030447401ce67bc8adab6ae3b65accf0dab81508032b9ef7a3d7d978107dacf"

  url "https://www.eastgate.com/download/tbx#{version.no_dots}.dmg"
  name "Tinderbox"
  desc "Tool to take, visualize and analyze notes"
  homepage "https://eastgate.com/Tinderbox/"

  livecheck do
    url :homepage
    regex(/>Tinderbox\s+v?(\d+(?:\.\d+)+)[< \s]/i)
  end

  depends_on macos: ">= :high_sierra"

  app "Tinderbox #{version.major}.app"
end
