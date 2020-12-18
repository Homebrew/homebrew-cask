cask "transmit" do
  version "5.7.1"
  sha256 "bd781f8f7219a2dfc5f2b6473f3962c392ab29a884fce4f6df85aee8e37e41d5"

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/",
          must_contain: version.chomp(".0")
  name "Transmit"
  desc "File transfer application"
  homepage "https://panic.com/transmit/"

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Transmit.app"

  zap trash: [
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Application Support/Transmit",
  ]
end
