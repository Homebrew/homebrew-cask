cask "xact" do
  version "2.55"
  sha256 "95c577637d7b263d3b6d5ce847134ba0ffe42f4c885ee2ae8354b051b8e00882"

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
