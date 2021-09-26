cask "yuque" do
  version "0.9.31"

  if Hardware::CPU.intel?
    sha256 "c209f5270456c5ebe930e78bb89957ffcff3d0fc63880eb9fdaf558613b24fb0"

    url "https://app.nlark.com/yuque-desktop/Yuque-#{version}.dmg",
        verified: "app.nlark.com/yuque-desktop/"
  else
    sha256 "5e9a303cf46c7aebc1f5621e200f9cce83c80d37b60193435fd6f441f5550dd1"

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
