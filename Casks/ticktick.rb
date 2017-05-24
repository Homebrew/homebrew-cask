cask 'ticktick' do
  version '1.6.70,28'
  sha256 '6196c9652c7aa57ea88a0dd6a0f577c449bf8512f997c563aca81864f664c31c'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
