cask "yuque" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "1.2.5"

  if Hardware::CPU.intel?
    sha256 "ab592f54dd8623a5ae38615e04e59a73d329993bba9920827701c848909f9006"
  else
    sha256 "f0c5e6bc886dd14f4f920733e55a389d20f178acd9dd59d5053e1ec65bed027c"
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
