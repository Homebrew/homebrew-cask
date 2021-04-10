cask "tencent-docs" do
  version "2.2.1"
  sha256 :no_check

  url "https://down.qq.com/qqweb/mac_docs/MacTencentDocs.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    url "https://docs.qq.com/home/download"
    strategy :page_match
    regex(/Mac\s*版本号\s*(\d+(?:\.\d+)*)/i)
  end

  auto_updates true

  app "腾讯文档.app"

  zap trash: "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist"
end
