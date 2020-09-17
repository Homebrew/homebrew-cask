cask "transmit" do
  version "5.6.7"
  sha256 "7658ca888d928489f9bcd13dc35dbc0cf1393ab746be477a0a707fc26d837c76"

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  appcast "https://library.panic.com/releasenotes/transmit#{version.major}/"
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
