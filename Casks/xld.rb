cask "xld" do
  version "20220917,155.1"
  sha256 "2c5aff1e6f9bdcc210a3aa238f595b90f7e6dcdb4d2be7f5c337ff3bebfdb71e"

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
