cask "yuque" do
  version "0.10.2"

  if Hardware::CPU.intel?
    sha256 "c1546b1ce49425bd2e1035d5b6e98bc4fc4d84c9738d769b87e40f396713f780"

    url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
        verified: "app.nlark.com/yuque-desktop/"
  else
    sha256 "fc05836674756f961be2516f5cfb5f24fb3d9fec635e9a811c56a1f587c1ee81"

    url "https://app.nlark.com/yuque-desktop/arm64/Yuque-#{version}.dmg",
        verified: "app.nlark.com/yuque-desktop/arm64/"
  end

  name "Yuque"
  name "语雀"
  desc "Cloud knowledge base"
  homepage "https://www.yuque.com/"

  # The stable version is that listed on the download page. See:
  #   https://github.com/Homebrew/homebrew-cask/pull/111472
  livecheck do
    url "https://www.yuque.com/install/desktop"
    regex(/desktopDownloadVersion%22%3A%22(\d+(?:\.\d+)*)/i)
  end

  app "语雀.app"

  zap trash: [
    "~/Library/Application Support/yuque-desktop",
    "~/Library/Preferences/com.yuque.app.plist",
    "~/Library/Saved Application State/com.yuque.app.savedState",
  ]
end
