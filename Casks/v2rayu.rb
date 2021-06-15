cask "v2rayu" do
  version "3.1.0"
  sha256 "7c0f5fbf5c36d5d3f36135d4739af6668e78742b094bc7e3bb0a52a3055c5153"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
