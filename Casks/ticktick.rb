cask 'ticktick' do
  version '1.6.80,29'
  sha256 '227369aa701493da448fa4dc1b9fc0cae70a54ea57887d63787b3a3553f89c8a'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
