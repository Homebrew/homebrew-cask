cask "ximalaya" do
  version "1.3.2,1602486767"
  sha256 "1747d59c40ff4f2b9c033854cd69e4a77db66e754c79f2228dc4d5cb936a8aa0"

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.before_comma}/download/Ximalaya-#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  app "喜马拉雅.app"
end
