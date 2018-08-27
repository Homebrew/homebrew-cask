cask 'ticktick' do
  version '2.6.50,74'
  sha256 '7e920331e19b2b902c6d8581fa9eb11ad1da08d87a9b61d4fd0f0eabe4eaccdb'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
