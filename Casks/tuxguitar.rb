cask "tuxguitar" do
  version "1.5.4"
  sha256 "af2d3bee09057c9716eaf4a13d11898945f0431a3c84739a51a39cea49497f6e"

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  appcast "https://sourceforge.net/projects/tuxguitar/rss?path=/TuxGuitar"
  name "TuxGuitar"
  homepage "https://sourceforge.net/projects/tuxguitar/"

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
