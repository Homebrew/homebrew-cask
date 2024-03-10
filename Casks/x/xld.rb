cask "xld" do
  version "20240310"
  sha256 "29939315c5c7983cad307aa1921b5191f72f90e5ea39d01576bb0b336b5d16db"

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
