cask "videopaper" do
  version :latest
  sha256 :no_check

  url "https://github.com/Mcrich-LLC/VideoPaper/releases/latest/download/VideoPaper.zip"
  name "VideoPaper"
  desc "Set videos as your arial wallpaper"
  homepage "https://github.com/Mcrich-LLC/VideoPaper"

  depends_on macos: ">= :tahoe"

  app "VideoPaper.app"

  zap trash: [
    "~/Library/Preferences/com.mcrich.VideoPaper.plist",
    "~/Library/Saved Application State/com.mcrich.VideoPaper.savedState",
    "~/Library/Application Support/VideoPaper",
  ]
end