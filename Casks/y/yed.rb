cask "yed" do
  arch arm: "arm64", intel: "amd64"

  version "3.24"
  sha256 arm:   "197420d3376912f5b9a2590b1c22c2107bba06269e0b8db61e287d21d6f9b6d0",
         intel: "ba885436ea3de1919879e73eaf77b97c6175df3fb90693c0a31756dde0ab885a"

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE21_#{arch}.dmg"
  name "yWorks yEd"
  desc "Create diagrams manually, or import external data for analysis"
  homepage "https://www.yworks.com/products/yed"

  livecheck do
    url "https://www.yworks.com/downloads#yEd"
    regex(/yEd[._-]v?(\d+(?:\.\d+)+)[._-]with[._-]JRE\d+?[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :el_capitan"

  app "yEd.app"

  zap trash: [
    "~/Library/Saved Application State/com.yworks.yEd.savedState",
    "~/Library/yWorks/yEd",
  ]
end
