cask "yed" do
  version "3.22"
  sha256 "fe3fad42c89bd5a2730887c8bd15fa75d6580b08940e7d7365ab4333b6c9d880"

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
