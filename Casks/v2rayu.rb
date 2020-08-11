cask "v2rayu" do
  version "2.3.0"
  sha256 "4f38588fb5b0e9c01ba389d1aecdf881ccb3d676ff5e5368dce0ad73867933be"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast "https://github.com/yanue/V2rayU/releases.atom"
  name "V2rayU"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
