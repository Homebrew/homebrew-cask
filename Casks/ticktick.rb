cask 'ticktick' do
  version '2.7.01,76'
  sha256 'd5f39541a619fafa896c0f8cc9667326a07d6d1a454001cbdc1d668850e3309b'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
