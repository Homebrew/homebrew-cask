cask "wings3d" do
  version "2.2.7"
  sha256 "d0c5e140a6a2a5fddd64ba12a66dc5a272302444a8ebf80f6df70ba332a0daca"

  url "https://downloads.sourceforge.net/wings/wings-#{version}-macosx.dmg",
      verified: "sourceforge.net/wings/"
  appcast "https://sourceforge.net/projects/wings/rss"
  name "Wings 3D"
  homepage "http://www.wings3d.com/"

  app "Wings3D.app"
end
