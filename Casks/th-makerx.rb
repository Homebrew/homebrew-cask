cask "th-makerx" do
  version "4.0.0"
  sha256 "19a3141106beb377d5e00dff3a9c092f4e8aa68048fa30460824e944ebc2d797"

  url "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/hqx/Th-MakerX_#{version.no_dots}.zip"
  name "Th-MakerX"
  homepage "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html"

  livecheck do
    url "http://www5.wind.ne.jp/miko/mac_soft/th-maker_x/index-en.html"
    strategy :page_match
    regex(%r{href=.*?/Th-MakerX_(\d+(?:\.\d+)*)\.zip}i)
  end

  app "Th-MakerX_#{version.no_dots}/Th-MakerX.app"

  zap trash: [
    "~/Library/Preferences/jp.ne.wind.miko.ThMakerX3.plist",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/jp.ne.wind.miko.thmakerx3.sfl*",
  ]
end
