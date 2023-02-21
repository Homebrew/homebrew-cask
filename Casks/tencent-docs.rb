cask "tencent-docs" do
  arch arm: "Arm64", intel: "X64"

  version "2.4.9"
  sha256 :no_check

  url "https://down.qq.com/qqweb/mac_docs/MacTencentDocs#{arch}.dmg"
  name "Tencent Docs"
  name "腾讯文档"
  desc "Online editor for Word, Excel and PPT documents"
  homepage "https://docs.qq.com/"

  livecheck do
    # curl \
    #   -H 'content-type: application/json' \
    #   --data-binary \
    #   '{"pull_item":{"app_id":"936c3190-4a5a-4608-ac9e-d37fe33f40be","group":"DOWNLOAD.release-note-mac"}}' \
    #   https://docs.qq.com/config.v2.ConfigService/PullConfigReq
    skip "only works with POST request"
  end

  auto_updates true

  app "腾讯文档.app"

  zap trash: "~/Library/Preferences/com.tencent.mac.tdappdesktop.plist"
end
