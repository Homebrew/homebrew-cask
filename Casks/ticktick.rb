cask 'ticktick' do
  version '1.8.00,39'
  sha256 'a767a2e678c92388522c56c728242b53d08c13c79e31f8072c97319b0e72d710'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
