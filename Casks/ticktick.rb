cask 'ticktick' do
  version '2.7.00,75'
  sha256 '4f1ccb373b2fab3b9804232b832ee1b8810d61b2d78459b56bb02805483b51d9'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
