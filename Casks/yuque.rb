cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.5.3"

  if Hardware::CPU.intel?
    sha256 "bceac42348e8b38cf258cf430c2c50f9bf0996ce7119c17ada012f8154d14e71"
  else
    sha256 "ccb7a030ecaeb3f2833244c42ec26331dac920947a9c1729a0e9b69be071b1e0"
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
