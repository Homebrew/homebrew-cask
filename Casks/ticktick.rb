cask "ticktick" do
  version "3.7.50,163"
  sha256 "e43003986f86820d5afa2466ce45262dff2b18eb6182dcb523631e464c1a3b48"

  # appest-public.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac"
  name "TickTick"
  desc "To-do & task list manager"
  homepage "https://www.ticktick.com/home"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TickTick.app"
end
