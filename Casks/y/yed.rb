cask "yed" do
  arch arm: "arm64", intel: "amd64"

  version "3.25.1"
  sha256 arm:   "db6870a59f3128b3e9b42afb80723963478378cb6e05e6dd9cd3c8a3d99e903b",
         intel: "bfe6d2eeaa52e5333262256c092747191905a7736d0e218dcfcc8dc8fce48d99"

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
