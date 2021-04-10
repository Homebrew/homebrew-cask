cask "tencent-docs" do
  version "2.2.1,71"
  sha256 :no_check

  url "https://down.qq.com/qqweb/mac_docs/MacTencentDocs.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editior for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url :url
    strategy :extract_plist
  end

  auto_updates true

  app "腾讯文档.app"

  zap trash: "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist"
end
