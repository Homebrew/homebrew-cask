cask 'ticktick' do
  version '1.6.20'
  sha256 'e5aad9b01da4e9f08eb5355a189b669ff142002b445517c3280522d550a2f2b6'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
