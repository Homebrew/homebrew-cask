cask 'ticktick' do
  version '2.7.50,77'
  sha256 'a0ce491936bf4ea79f5111144555b13d1cb77bfa05d6e4413da7332b9326acf7'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
