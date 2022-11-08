cask "yuque" do
  arch arm: "-arm64"

  version "1.8.4"
  sha256 arm:   "73ea3f2c893c2e7bb76a6bfa12db12f0f4e98dd6eb5108d2622b0fc1862bbfa6",
         intel: "b841e4e9ad1e8a377c603fe0db90739562c86b650bc93418c6ab1eff7a22506e"

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
