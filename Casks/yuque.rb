cask "yuque" do
  arch arm: "-arm64"

  version "2.2.5"
  sha256 arm:   "8b90a9340da7284d2af3692ad4a6c399fd9b7d8a4f791d6c8f409d512c28bfc4",
         intel: "0d3118522ce0ea63acacbe53667c99a68f621b9cc47e6007f4c883722d70a2a6"

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
