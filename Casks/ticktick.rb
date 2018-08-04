cask 'ticktick' do
  version '2.6.00,71'
  sha256 '8e6f8f06f1097dec84e8ee7575335fbf65ef44282bfa1b4a9280189a481cc71e'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
