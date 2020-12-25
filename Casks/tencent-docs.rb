cask "tencent-docs" do
  version "2.0.6"
  sha256 :no_check

  url "https://down.qq.com/qqweb/mac_docs/MacTencentDocs.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "支持多人在线编辑Word、Excel和PPT文档"
  homepage "https://docs.qq.com/"

  auto_updates true

  app "腾讯文档.app"

  zap trash: [
    "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist",
  ]
end
