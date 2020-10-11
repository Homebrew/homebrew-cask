cask "ximalaya" do
  version "1.2.21,1597310073"
  sha256 "fcc76ea2971a623967f7d0bc149692c599ba9ddb8ad1c782447a06c8ac8db9d0"

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.before_comma}/download/Ximalaya-#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac"
  name "ximalaya"
  name "喜马拉雅"
  desc "Platform for podcasting and audio-sharing"
  homepage "https://www.ximalaya.com/"

  app "喜马拉雅.app"
end
