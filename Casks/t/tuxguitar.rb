cask "tuxguitar" do
  version "1.6.1"
  sha256 "44380e39dbbc711aec2e5d5b0b9ba0e128024980919e27f0d934a29e26ea3b8c"

  url "https://github.com/helge17/tuxguitar/releases/download/#{version}/tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app.tar.gz",
      verified: "github.com/helge17/tuxguitar/"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://www.tuxguitar.app/"

  app "tuxguitar-#{version}-macosx-cocoa-64.app"

  zap trash: "~/Library/Application Support/tuxguitar"
end
