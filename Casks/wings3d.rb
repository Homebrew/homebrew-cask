cask "wings3d" do
  version "2.2.6.1"
  sha256 "b2d4a1ad6fc66d8efbd88cbe761c3612913323bd173b45eb47be5db385f1c30f"

  # sourceforge.net/wings/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg"
  appcast "https://sourceforge.net/projects/wings/rss"
  name "Wings 3D"
  homepage "http://www.wings3d.com/"

  app "Wings3D.app"
end
