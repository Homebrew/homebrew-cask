cask "v2rayu" do
  version "2.3.0"
  sha256 "931926d0438d364a8344675cfd33acb9345e95e0d3ec71e5e385b92c1519561f"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast "https://github.com/yanue/V2rayU/releases.atom"
  name "V2rayU"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
