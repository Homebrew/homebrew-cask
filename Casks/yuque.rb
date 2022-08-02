cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.4.3"

  if Hardware::CPU.intel?
    sha256 "a2492dbb381f585b8209cabcd1ed7fd7a3ea78810e0633fd37958e5d4762c1a8"
  else
    sha256 "f3e90d4a0cb2eb4f0fa39fa02b46c522a3effa37d4ad9daefa0cb146889826f3"
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
