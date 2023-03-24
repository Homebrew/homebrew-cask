cask "yed" do
  version "3.23"
  sha256 "9ee18425fd0a3cc1b91921fb3ad6da01464a0d02f67aa442dc52f1691b2b5ea9"

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
