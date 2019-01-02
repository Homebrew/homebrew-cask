cask 'ticktick' do
  version '2.9.00,87'
  sha256 'b9546c747a57000fd2a2173a31357afb4b4b146a2df6bc9aedc86604e7f4476e'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
