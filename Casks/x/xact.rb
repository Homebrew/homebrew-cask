cask "xact" do
  version "2.57"
  sha256 "b6835feaa5a1676ac9630606ce340ba728b2a682372034f06d64eaa349c116e8"

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  name "xACT"
  desc "X Audio Compression Toolkit"
  homepage "http://xact.scottcbrown.org/"

  # Artifact not available over HTTPS
  disable! date: "2025-12-23", because: :no_longer_meets_criteria

  app "xACT#{version}/xACT.app"

  zap trash: "~/Library/Preferences/org.scottcbrown.xact.plist"
end
