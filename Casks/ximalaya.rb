cask "ximalaya" do
  version "1.3.1,1600856805"
  sha256 "8466905ec13364076b6760deb9d7c521c9889020ede62ff3bed9f5e00f6dbd13"

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "https://s1.xmcdn.com/yx/ximalaya-pc-client/#{version.before_comma}/download/Ximalaya-#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac"
  name "ximalaya"
  name "喜马拉雅"
  homepage "https://www.ximalaya.com/"

  app "喜马拉雅.app"
end
