cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.2"

  if Hardware::CPU.intel?
    sha256 "e4913378756114e352049279bbf8b77f57a4ffb99e76cc2c3816134642dfe428"
  else
    sha256 "f74f2c12435bde41ffa362e867e62cf23e910a7c9c3d13416089d36fc8074168"
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
