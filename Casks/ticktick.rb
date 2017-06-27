cask 'ticktick' do
  version '1.6.90,30'
  sha256 'c6af51ea133fd8c5328114505b23582e6a3595a09dbbddb38dec196dc30df0d1'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
