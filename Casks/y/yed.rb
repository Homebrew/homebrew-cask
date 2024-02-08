cask "yed" do
  arch arm: "arm64", intel: "amd64"

  version "3.23.2"
  sha256 arm:   "79220943ab52deb18297aa9d90facd718040d2b03f20b1017bc6c3da41805a1e",
         intel: "9af1882be4ba17ff8f28ba3a42662fe3cec0fbfedd9c1a2589c342b05e216664"

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE20_#{arch}.dmg"
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
