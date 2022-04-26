cask "wings3d" do
  version "2.2.9"
  sha256 "3f500da89a2a6f7b9e8dcd483821b7d41121ad63cc5cec121db626bce516b9b6"

  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg",
      verified: "sourceforge.net/wings/"
  name "Wings 3D"
  desc "Advanced subdivision modeler"
  homepage "http://www.wings3d.com/"

  app "Wings3D.app"
end
