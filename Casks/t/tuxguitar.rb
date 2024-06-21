cask "tuxguitar" do
  version "1.5.6"
  sha256 "fa53ebd78fa507bbb2a654e17efb6913957cf5eb8cceeb6da3423c82ff6e18ff"

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://sourceforge.net/projects/tuxguitar/"

  deprecate! date: "2024-06-21", because: :discontinued

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
