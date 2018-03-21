cask 'ticktick' do
  version '2.1.00,56'
  sha256 'd9bed721e65d1d8b6c309b5e16197c84cfea9ffbd74178334adf61a541bd6cad'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
