cask "yam-display" do
  version "2.4.8.4"
  sha256 "49b67f195e23365559310c51e3d423c5d89d04ea58cad1ecf98e7292d19e121c"

  url "https://www.yamdisplay.com/app/YamDisplay#{version}.dmg"
  name "Yam Display"
  desc "Yet another monitor"
  homepage "https://www.yamdisplay.com/"

  livecheck do
    url :homepage, user_agent: :browser
    regex(/href=.*?YamDisplay[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "Yam Display.app"

  zap trash: [
    "~/Library/Caches/com.yamstu.yamdisplaymac",
    "~/Library/Preferences/com.yamstu.yamdisplaymac.plist",
  ]
end
