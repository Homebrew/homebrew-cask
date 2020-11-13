cask "ticktick" do
  version "3.7.40,160"
  sha256 "dac852c0bcb76cb1d19cb5d7c0e27642f06672d077c4e6773cc3fbf6fe547962"

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
