cask "v2rayu" do
  version "3.0.3"
  sha256 "959416584a53b95fd11139823ae7d0be66b0d7e444d159693dda798d18183786"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast "https://github.com/yanue/V2rayU/releases.atom"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
