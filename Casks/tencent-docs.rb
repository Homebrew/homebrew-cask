cask "tencent-docs" do
  arch arm: "Arm64", intel: "X64"

  version "3.0.6,336"
  sha256 :no_check

  url "https://down.qq.com/qqweb/mac_docs/MacTencentDocs#{arch}.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "腾讯文档.app"

  zap trash: "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist"
end
