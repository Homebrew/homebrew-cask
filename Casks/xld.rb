cask "xld" do
  version "2020.11.23"
  sha256 "1ad1b38dac80694da805b154ed031b0df3d9019e719a9b6d1c4a9d4351a72b70"

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
