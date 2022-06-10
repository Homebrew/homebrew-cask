cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.5"

  if Hardware::CPU.intel?
    sha256 "09caddd53ee72b19560d31eea667e22c22fab3f5389b9a25f9ff4e012f630f0e"
  else
    sha256 "2a13951a86d3aa79fb85d2f82cd279407db15b88b72c391584a24605e4eadefc"
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
