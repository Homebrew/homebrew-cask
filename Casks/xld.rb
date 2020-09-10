cask "xld" do
  version "2019.10.04"
  sha256 "6fedfede1f54d691b69f0d6dc5477062c57fe6c48b7f86624a47eb1b58a1e4ef"

  # sourceforge.net/xld/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/xld/xld-#{version.no_dots}.dmg"
  appcast "https://svn.code.sf.net/p/xld/code/appcast/xld-appcast_e.xml",
          must_contain: version.no_dots
  name "X Lossless Decoder"
  name "XLD"
  desc "Lossless audio decoder"
  homepage "https://tmkk.undo.jp/xld/index_e.html"

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
