cask "tuxguitar" do
  version "1.6.4"
  sha256 "1d16a97b313f7968773b3f677a8ce086f6cc78ac8999bc68f02e4e53f03a2ef6"

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
