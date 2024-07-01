cask "v2ray-unofficial" do
  version "2.3.1"
  sha256 "c1f900950e4650190dc2bf67ad8fc51b4602be214b4807233d1175dfca855ea6"

  url "https://github.com/Dr-Incognito/V2Ray-Desktop/releases/download/#{version}/V2Ray-Desktop-v#{version}-macOS-x86_64.dmg"
  name "V2Ray Desktop"
  desc "GUI client that supports Shadowsocks(R), V2Ray, and Trojan protocols"
  homepage "https://github.com/Dr-Incognito/V2Ray-Desktop"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "V2Ray-Desktop.app"

  zap trash: [
    "~/Library/Preferences/V2Ray-Desktop",
    "~/Library/Saved Application State/com.yourcompany.V2Ray-Desktop.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
