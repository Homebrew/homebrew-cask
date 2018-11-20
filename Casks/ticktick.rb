cask 'ticktick' do
  version '2.8.51,85'
  sha256 '1976c039bec1a1f7d54fe7576fb8100a3b1f64956b1382db18f0e7f3b6df4a62'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
