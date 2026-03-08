cask "yam-display" do
  version "2.4.8.1"
  sha256 "05a33821af7917165db53cdad72cca3b716c5f3ef07d8c0d6b551dbbe3c7c5ec"

  url "https://www.yamdisplay.com/app/YamDisplay#{version}.dmg"
  name "Yam Display"
  desc "Yet another monitor"
  homepage "https://www.yamdisplay.com/"

  livecheck do
    url :homepage, user_agent: :browser
    regex(/href=.*?YamDisplay[._-]?v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "Yam Display.app"

  zap trash: [
    "~/Library/Caches/com.yamstu.yamdisplaymac",
    "~/Library/Preferences/com.yamstu.yamdisplaymac.plist",
  ]
end
