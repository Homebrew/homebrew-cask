cask 'ticktick' do
  version '2.9.01,88'
  sha256 'c8e62cde27f9c5a164b288c61cbc5284f8b4594b41378ed721f81626c086389b'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
