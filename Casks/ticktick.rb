cask "ticktick" do
  version "3.7.00,148"
  sha256 "8eb63d84e3e0f57caf7f115979c81ef5afd34d897200eb3c5726570da323c416"

  # appest-public.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac"
  name "TickTick"
  homepage "https://www.ticktick.com/home"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TickTick.app"
end
