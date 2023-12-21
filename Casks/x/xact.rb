cask "xact" do
  arch arm: "arm64", intel: "x64"

  version "2.54"
  sha256 "8e7f3af32202148139beefda41c4a75c59955df967d8545f2da62e41f32dc9f5"

  url "http://xact.scottcbrown.org/xACT#{version}.zip"
  name "xACT"
  desc "X Audio Compression Toolkit"
  homepage "http://xact.scottcbrown.org/"

  livecheck do
    url "http://xact.scottcbrown.org/"
    regex(/href=.*?xACTv?(\d+(?:\.\d+)+)\.zip/i)
  end

  depends_on macos: ">= :high_sierra"

  app "xACT#{version}/xACT.app"

  zap trash: [
    "~/Library/Preferences/org.scottcbrown.xact.plist",
  ]
end
