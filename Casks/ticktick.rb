cask 'ticktick' do
  version '1.6.61,27'
  sha256 '7752268c42645ed09c299b97768aebdbe1c50f399071962c2a95667e3863af24'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
