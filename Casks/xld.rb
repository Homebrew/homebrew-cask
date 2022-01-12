cask "xld" do
  version "20211018,154.0"
  sha256 "5234e17218624e6bb341a2bb23c8994310b7d4962d3f878c3ed27b265d2791d6"

  url "https://downloads.sourceforge.net/xld/xld-#{version.csv.first}.dmg",
      verified: "sourceforge.net/xld/"
  name "X Lossless Decoder"
  name "XLD"
  desc "Lossless audio decoder"
  homepage "https://tmkk.undo.jp/xld/index_e.html"

  livecheck do
    url "https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml"
    strategy :sparkle
  end

  auto_updates true

  app "XLD.app"
  binary "CLI/xld"

  zap trash: [
    "~/Library/Application Support/XLD",
    "~/Library/Preferences/jp.tmkk.XLD.plist",
    "~/Library/Caches/jp.tmkk.XLD",
    "~/Library/Saved Application State/jp.tmkk.XLD.savedState",
  ]
end
