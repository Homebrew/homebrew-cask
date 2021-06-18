cask "xld" do
  version "20210101,153.1"
  sha256 "2fa9aa8035fc2713fe410fb835b0df9eeaae91593e550265b4226f836009d009"

  url "https://downloads.sourceforge.net/xld/xld-#{version.before_comma}.dmg",
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
