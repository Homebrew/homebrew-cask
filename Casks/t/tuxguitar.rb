cask "tuxguitar" do
  version "1.6.1"
  sha256 "d83fa6298f3c32bbe52636402f71ddc73a6d7d7ef809459d278529c0177de6a6"

  url "https://github.com/helge17/tuxguitar/releases/download/#{version}/tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app.tar.gz"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://www.tuxguitar.app"

  app "tuxguitar-#{version}-macosx-cocoa-64.app"
end
