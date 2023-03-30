cask "yuque" do
  version "2.6.4.1058"
  sha256 "3c3e882189505661d424b19cd142c606028b51a0aaa2484c09969bb510542ade"

  url "https://app.nlark.com/yuque-desktop/#{version}/Yuque-#{version}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  # The stable version is that listed on the download page. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/111472
  livecheck do
    url "https://www.yuque.com/download/"
    regex(/desktopDownloadVersion%22%3A%22(\d+(?:\.\d+)+)/i)
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
