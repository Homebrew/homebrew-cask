cask "yuque" do
  arch arm: "-arm64"

  version "2.4.2.1017"
  sha256 arm:   "3e85477b190fefca3ed1c70177ded366cedf4c1cac78ce2740a4aa4e76050d9e",
         intel: "90c871a04a889dc6f1ae3ed4fd74dfc6aecd327df0a5f0afea3e666bf650b1b7"

  url "https://app.nlark.com/yuque-desktop/#{version}/Yuque-#{version}#{arch}.dmg",
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
