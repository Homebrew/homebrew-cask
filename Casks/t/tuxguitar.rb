cask "tuxguitar" do
  version "2.0.1"
  sha256 "b2041622009f6c1663aaeaab123f6b93a1d99550e92d8080d3af918327570912"

  url "https://github.com/helge17/tuxguitar/releases/download/#{version}/tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app.tar.gz",
      verified: "github.com/helge17/tuxguitar/"
  name "TuxGuitar"
  desc "Multitrack guitar tablature editor and player"
  homepage "https://www.tuxguitar.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  app "tuxguitar-#{version}-macosx-swt-cocoa-x86_64.app"

  zap trash: "~/Library/Application Support/tuxguitar"
end
