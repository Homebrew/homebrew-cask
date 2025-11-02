cask "tuxguitar" do
  version "2.0.0"
  sha256 "1eb1ae0284be4da5ada59dcb755f29dff8f07cd9eb0b93b1af02fe65ff9a062d"

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
