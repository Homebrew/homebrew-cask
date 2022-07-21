cask "v2ray-unofficial" do
  version "2.4.0"
  sha256 "717e9df880ef74e4f760c75e8983cb63112f1f9a301c4dc61c16217742f1dd3f"

  url "https://github.com/Dr-Incognito/V2Ray-Desktop/releases/download/#{version}/V2Ray-Desktop-v#{version}-macOS-x86_64.dmg"
  name "V2Ray Desktop"
  desc "GUI client that supports Shadowsocks(R), V2Ray, and Trojan protocols"
  homepage "https://github.com/Dr-Incognito/V2Ray-Desktop"

  app "V2Ray-Desktop.app"

  zap trash: [
    "~/Library/Preferences/V2Ray-Desktop",
    "~/Library/Saved Application State/com.yourcompany.V2Ray-Desktop.savedState",
  ]
end
