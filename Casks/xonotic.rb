cask "xonotic" do
  version "0.8.2"
  sha256 "a22f7230f486c5825b55cfdadd73399c9b0fae98c9e081dd8ac76eca08359ad5"

  url "https://dl.xonotic.org/xonotic-#{version}.zip"
  name "Xonotic"
  desc "Quake-inspired arena-style first person shooter game"
  homepage "https://www.xonotic.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/xonotic-(\d+(?:\.\d+)*)\.zip}i)
  end

  suite "Xonotic"

  zap trash: "~/Library/Application Support/xonotic"

  caveats "This version has not been updated since April 2017. "\
    "Run '/Applications/Xonotic/misc/tools/rsync-updater/update-to-autobuild.sh' "\
    "after install for the latest release with improved performance and compatibility."
end
