cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.3.3"

  if Hardware::CPU.intel?
    sha256 "7690d39330195271fdc102ea721df986d63e02036a14f3d5412c2c9dfdf10427"
  else
    sha256 "7357cb0bb1ed720d7dac3e0662949ce5dff9d83e45281152957bfe101f73aca2"
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
