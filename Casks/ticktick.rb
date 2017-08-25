cask 'ticktick' do
  version '1.7.60,36'
  sha256 '5d2639624fdca42f2665d87ca08c618b6eb5e7a580d832b4e3f8d4776bce8061'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
