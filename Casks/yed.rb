cask "yed" do
  version "3.20.1"
  sha256 "8cf3666b7c83dcd365ef1308ab8f5eeb53bea2405682ae9cae01a3cfd055ca98"

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE14.dmg"
  name "yWorks yEd"
  desc "Create diagrams manually, or import external data for analysis"
  homepage "https://www.yworks.com/products/yed"

  livecheck do
    url "https://www.yworks.com/products/yed/download#download"
    regex(/yEd[._-]v?(\d+(?:\.\d+)+)[._-]with[._-]JRE\d+?\.dmg/i)
  end

  app "yEd.app"
end
