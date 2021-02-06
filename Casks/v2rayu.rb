cask "v2rayu" do
  version "3.0.0"
  sha256 "b94e07e440f6b9ec501a7ddae05065792f8817a62ca5bf4cbc3460e0aa2ebc2d"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast "https://github.com/yanue/V2rayU/releases.atom"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
