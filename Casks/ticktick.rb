cask 'ticktick' do
  version '2.2.00,57'
  sha256 'fd00f83560bece399c804d5dfa194fecee49db3629d4b713cbb7c9f2d3e64de5'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
