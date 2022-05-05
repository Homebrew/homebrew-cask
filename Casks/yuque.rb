cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.1.4"

  if Hardware::CPU.intel?
    sha256 "fbdbfa356a0559170029019f12b8fb958635f5418051d90a0c37772f1887eecb"
  else
    sha256 "cd6e8b3a5f496cf49a109f86b5f27a772bac3069fa791dcbe912b4cbcbbea527"
  end

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
