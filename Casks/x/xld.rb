cask "xld" do
  version "20230627"
  sha256 "ad9d3d6bbc491a368f9ef843cd2d2e59e87db193354b4b4e5cfec0120a903cc4"

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
