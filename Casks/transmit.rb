cask "transmit" do
  version "5.7.2"
  sha256 "57a4d14984a16d38eb0a4ab10aa16c8fb1cbd974dfa802ea7d077e9fc4c771b8"

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
