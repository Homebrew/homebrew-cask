cask "yed" do
  version "3.21"
  sha256 "a7907fa7c4430bf5ba435140670e355bb361375b0212d6a63487735b05f3efd2"

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE15.dmg"
  name "yWorks yEd"
  desc "Create diagrams manually, or import external data for analysis"
  homepage "https://www.yworks.com/products/yed"

  livecheck do
    url "https://www.yworks.com/products/yed/download#download"
    regex(/yEd[._-]v?(\d+(?:\.\d+)+)[._-]with[._-]JRE\d+?\.dmg/i)
  end

  app "yEd.app"
end
