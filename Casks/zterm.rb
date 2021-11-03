cask "zterm" do
  version "1.2"
  sha256 "711b1e4322970d2ece65ab5d51e18f2e634c2f43847db9a7a98e4326e1b8217c"

  url "https://www.dalverson.com/zterm/ZTerm#{version}.dmg"
  name "ZTerm"
  desc "Terminal emulation program"
  homepage "https://www.dalverson.com/zterm/"

  livecheck do
    url :homepage
    regex(/href.*?ZTerm[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: "<= :mojave"

  app "ZTerm.app"
end
