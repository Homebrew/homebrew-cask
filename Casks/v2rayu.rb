cask "v2rayu" do
  version "2.3.1"
  sha256 "2e8f132c05a8af3b89bd0dacafd2fc9244636587848453f7cd877ab246a33d52"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  appcast "https://github.com/yanue/V2rayU/releases.atom"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
