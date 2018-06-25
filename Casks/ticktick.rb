cask 'ticktick' do
  version '2.4.00,62'
  sha256 'e9d822a1ecb5aeaf3abf6cd1674d20647d813a90633264d6ff3586e0b311b7a7'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
