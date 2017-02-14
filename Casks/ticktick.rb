cask 'ticktick' do
  version '1.6.31'
  sha256 'b5fb9aa43ddd2a2ff6636cbf6feb274e2b10bce2330b23635624f06b9d37d770'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
