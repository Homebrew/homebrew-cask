cask 'ticktick' do
  version '2.5.50,70'
  sha256 '9230e99db6318d75934c896a8b395b9707f72af93ac9dab99a07ecb6d82cc571'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
