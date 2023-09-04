cask "yuque" do
  version "3.1.1.1104"
  sha256 "93c56f7c606708e7627900fcca18dcf67dc376c9b0d269cf5d19249862c9ca09"

  url "https://app.nlark.com/yuque-desktop/#{version}/BJ66df1ffa9d2c456b90cb0a70261ad2cb/Yuque-#{version}.dmg",
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
