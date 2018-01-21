cask 'ticktick' do
  version '1.9.52,53'
  sha256 '7ad7a48ec81bb955426b0a057d72a0273668176c5a01bfa91618c559bfda4426'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
