cask 'ticktick' do
  version '1.0.1'
  sha256 'be20a752e9fa696dcf0f8747752190d19f5910298fa6f5a74f9e364bdda1fe41'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
