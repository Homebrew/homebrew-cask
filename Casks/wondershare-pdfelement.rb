cask "wondershare-pdfelement" do
  version "8.5.0,3594"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement_full5237.zip"
  name "Wondershare PDFelement for Mac"
  desc "Create, edit, convert and sign PDF documents"
  homepage "https://pdf.wondershare.com/"

  depends_on macos: ">= :sierra"

  app "PDFelement.app"

  uninstall quit: [
    "com.wondershare.PDFelement",
    "com.wondershare.helper_compact",
  ]

  zap trash: [
    "~/Library/Application Support/com.wondershare.PDFelement",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.wondershare.pdfelement.sfl2",
    "~/Library/Caches/PDFelement",
    "~/Library/Caches/com.wondershare.PDFelement",
    "~/Library/Preferences/com.wondershare.PDFelement-custom.plist",
    "~/Library/Preferences/com.wondershare.PDFelement.plist",
    "~/Library/Saved Application State/com.wondershare.PDFelement.savedState",
    "~/Library/WebKit/com.wondershare.PDFelement",
  ]
end
