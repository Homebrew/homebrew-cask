cask "wondershare-pdfelement" do
  version "8.5.0,3594"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/mac-pdfelement_full5237.zip"
  name "Wondershare PDFelement for Mac"
  desc "Create, edit, convert and sign PDF documents"
  homepage "https://pdf.wondershare.com/"

  depends_on macos: ">= :sierra"

  app "PDFelement.app"

  uninstall quit:   [
    "com.wondershare.PDFelement",
    "com.wondershare.helper_compact",
  ],

            delete: [
              "~/Library/Application Support/com.wondershare.PDFelement",
              "~/Library/Application Support/com.wondershare.Installer",
              "~/Library/Caches/PDFelement",
              "~/Library/Caches/com.wondershare.PDFelement",
              "~/Library/Saved Application State/com.wondershare.PDFelement.savedState",
              "~/Library/Caches/com.plausiblelabs.crashreporter.data/com.wondershare.PDFelement",
              "/Applications/PDFelement.app",
            ]
end
