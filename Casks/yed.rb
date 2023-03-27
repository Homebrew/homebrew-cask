cask "yed" do
  version "3.23"
  sha256 "aa34dcfc2e8b03c9de4be4ec62018cecbbf3559eb735a4ea94f5ec80f7e07fde"

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
