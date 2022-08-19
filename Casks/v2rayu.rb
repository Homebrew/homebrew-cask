cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "3.3.0"

  on_intel do
    sha256 "f20de5fae2308ac4c528d1e6ce9fd1aa071cfc05245d19924408640b2bbfd62b"
  end
  on_arm do
    sha256 "9fb1aa5a2e8d5dc0243c6f5c6b99ee5ac44cf233d0a0280badc5a9709a22421c"
  end

  url "https://github.com/yanue/V2rayU/releases/download/#{version}/V2rayU-#{arch}.dmg"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"
end
