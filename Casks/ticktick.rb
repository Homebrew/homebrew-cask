cask 'ticktick' do
  version '2.7.51,81'
  sha256 '69f9459bf2536f441ab94700fee54bd6b5c9c93b87ad5d15e8b518abdb02b39e'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
