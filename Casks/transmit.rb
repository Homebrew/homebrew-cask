cask "transmit" do
  version "5.7.3"
  sha256 "56da5ad9421d067f2eee534b171a87fb21c1397ab45ed5f0ae878d79340e4893"

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
