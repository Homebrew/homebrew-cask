cask "yed" do
  arch arm: "arm64", intel: "amd64"

  version "3.25"
  sha256 arm:   "5cfeff6cb48b7aa671070ed2d2fd13a38e201131d3f02cb1bbb0e4a5f8b67112",
         intel: "73723d901f1f51218c4b09300e7a50a25dc6642d37dc104b8e4b949f0ee86816"

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
