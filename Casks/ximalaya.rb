cask "ximalaya" do
  version "1.2.21,1596708911"
  sha256 "5f45015b94f0445ad69f09c1a7e4ed5ca37acdcbe68bdc6003eba19b3ef451a3"

  # s1.xmcdn.com/ was verified as official when first introduced to the cask
  url "http://s1.xmcdn.com/yx/ximalaya-pc/#{version.before_comma}/download/Ximalaya-#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ximalaya.com/down/lite?client=mac"
  name "ximalaya"
  name "喜马拉雅"
  homepage "https://www.ximalaya.com/"

  app "喜马拉雅.app"
end
