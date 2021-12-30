cask "v2rayu" do
  version "3.2.0"
  sha256 "c22301909180efb6750def820952c25e0b7fbe5838de3cbfac1bdd219ececae5"

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU.dmg"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
