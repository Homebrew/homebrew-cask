cask "tuxguitar" do
  version "1.5.5"
  sha256 "98e546d9aac5c88430335eb8ed2718ea4089f8d5e186c3f4bdcabe5856877b31"

  url "https://downloads.sourceforge.net/tuxguitar/tuxguitar-#{version}-macosx-cocoa-64.app.tar.gz"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://sourceforge.net/projects/tuxguitar/"

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
