cask 'ticktick' do
  version '1.6.52,25'
  sha256 '6b8fe96976883f99fee0180d227a2e3a6839bf26f365e5bf07f03ce227aac29c'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
