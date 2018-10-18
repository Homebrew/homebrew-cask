cask 'ticktick' do
  version '2.8.00,83'
  sha256 '781bdf66284ecf13cca6cbf597b11133fc47462192a01b406e88f17210090bf8'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
