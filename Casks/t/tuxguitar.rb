cask "tuxguitar" do
  version "1.6.5"
  sha256 "cfd8b7b35a569fc60e6d704e07a6f3b3b3359d747323d3eb04e5e9b9e3d3798b"

  url "https://github.com/helge17/tuxguitar/releases/download/#{version}/tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app.tar.gz",
      verified: "github.com/helge17/tuxguitar/"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://www.tuxguitar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app"

  zap trash: "~/Library/Application Support/tuxguitar"
end
