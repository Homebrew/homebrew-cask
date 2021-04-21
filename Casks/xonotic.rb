cask "xonotic" do
  version "0.8.2"
  sha256 "a22f7230f486c5825b55cfdadd73399c9b0fae98c9e081dd8ac76eca08359ad5"

  url "https://dl.xonotic.org/xonotic-#{version}.zip"
  name "Xonotic"
  homepage "https://www.xonotic.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/xonotic-(\d+(?:\.\d+)*)\.zip}i)
  end

  suite "Xonotic"
end
