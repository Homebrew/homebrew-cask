cask "transmit" do
  version "5.7.4"
  sha256 "7706072f43f615b83ba2e227bcd6e0a79f3eb15363d0b6ce982a4729c6dc28bd"

  url "https://www.panic.com/transmit/d/Transmit%20#{version}.zip"
  name "Transmit"
  desc "File transfer application"
  homepage "https://panic.com/transmit/"

  livecheck do
    url "https://panic.com/download/transmit/Transmit-#{version.major}-Latest.zip"
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Transmit.app"

  zap trash: [
    "~/Library/Preferences/com.panic.Transmit.plist",
    "~/Library/Application Support/Transmit",
  ]
end
