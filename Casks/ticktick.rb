cask 'ticktick' do
  version '1.7.00,31'
  sha256 '15f40901064e3fc17eb155535940784e0dc6db45d5e61eeed4e79276cec426e5'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
