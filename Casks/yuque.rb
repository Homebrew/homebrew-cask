cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "arm64/"

  version "1.0.3"

  if Hardware::CPU.intel?
    sha256 "b81398d9bc7b241deeb19e73ccea9c48229ac791617dc4cc8de518b553cdf978"
  else
    sha256 "58ca2a09b575ebc118bcb9c800a3c72b1bb5142ec17b1376f1bfc842ffbc5328"
  end

  url "https://app.nlark.com/yuque-desktop/#{arch}Yuque-#{version}.dmg",
      verified: "app.nlark.com/yuque-desktop/"
  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  # The stable version is that listed on the download page. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/111472
  livecheck do
    url "https://www.yuque.com/install/desktop"
    regex(/desktopDownloadVersion%22%3A%22(\d+(?:\.\d+)+)/i)
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
