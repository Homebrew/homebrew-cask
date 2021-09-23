cask "yuque" do
  version "0.9.22"

  if Hardware::CPU.intel?
    sha256 "386fc9bb46e47a6e31b3199d49f239f4dd2506db56074d3d14a3f25824d0dd69"

    url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
        verified: "app.nlark.com/yuque-desktop/"
  else
    sha256 "edef6078a07a37c479c334459d5f61187ef53e0969e37a42c6963a96779348a0"

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
