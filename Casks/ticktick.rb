cask "ticktick" do
  version "3.7.10,151"
  sha256 "6e1ec41aa446dcf318ae31ae46ed9dc455c2fb0f9df8ad938473e80a0424825e"

  # appest-public.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://www.ticktick.com/static/getApp/download?type=mac"
  name "TickTick"
  homepage "https://www.ticktick.com/home"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TickTick.app"
end
