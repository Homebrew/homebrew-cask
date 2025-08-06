cask "wondershare-edrawmax" do
  version "14.5.2"
  sha256 :no_check

  language "zh", "CN" do
    url "https://cc-download.edrawsoft.cn/cbs_down/edraw-max_cn_full5381.zip"
    homepage "https://www.edrawsoft.cn/"
    app "亿图图示.app"

    "zh-CN"
  end
  language "en", default: true do
    url "https://download.edrawsoft.com/cbs_down/edraw-max_full5380.zip"
    homepage "https://www.edrawsoft.com/"
    app "Wondershare EdrawMax.app"

    "en-US"
  end

  name "EdrawMax"
  desc "Diagram software"

  livecheck do
    url "https://www.edrawsoft.com/whats-new/edrawmax.html"
    regex(/ma(?:c|xOS)\s*V?(\d+(?:\.\d+)+)/i)
  end

  depends_on macos: ">= :sierra"

  zap trash: [
    "~/Library/Edraw",
    "~/Library/Preferences/com.edrawsoft.edrawmax.plist",
    "~/Library/Saved Application State/com.edrawsoft.edrawmax.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
