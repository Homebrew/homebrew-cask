cask "xact" do
  version "2.56"
  sha256 "827016a4990f2756c357a3ebdc041abb32873633e1eac5fdfc8feb05f7bbe799"

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
