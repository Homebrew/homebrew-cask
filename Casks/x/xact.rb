cask "xact" do
  version "2.57"
  sha256 "b6835feaa5a1676ac9630606ce340ba728b2a682372034f06d64eaa349c116e8"

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  name "xACT"
  desc "X Audio Compression Toolkit"
  homepage "http://xact.scottcbrown.org/"

  livecheck do
    url :homepage
    regex(/href=.*?xACTv?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "xACT#{version}/xACT.app"

  zap trash: "~/Library/Preferences/org.scottcbrown.xact.plist"
end
