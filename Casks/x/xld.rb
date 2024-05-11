cask "xld" do
  version "20240511"
  sha256 "f317e301682d49d6c3f201a5906cd3f10473ede8087f83c4feb16c1440d7d3e7"

  url "https://downloads.sourceforge.net/xld/xld-#{version}.dmg",
      verified: "sourceforge.net/xld/"
  name "X Lossless Decoder"
  name "XLD"
  desc "Lossless audio decoder"
  homepage "https://tmkk.undo.jp/xld/index_e.html"

  livecheck do
    url "https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "XLD.app"
  binary "CLI/xld"

  zap trash: [
    "~/Library/Application Support/XLD",
    "~/Library/Caches/jp.tmkk.XLD",
    "~/Library/Preferences/jp.tmkk.XLD.plist",
    "~/Library/Saved Application State/jp.tmkk.XLD.savedState",
  ]
end
