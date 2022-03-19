cask "wings3d" do
  version "2.2.8"
  sha256 "2c16ec96637d4b88490bfb1b6a50d5f32835d69b6abb0597d0236f95debaa2e5"

  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg",
      verified: "sourceforge.net/wings/"
  name "Wings 3D"
  desc "Advanced subdivision modeler"
  homepage "http://www.wings3d.com/"

  app "Wings3D.app"
end
