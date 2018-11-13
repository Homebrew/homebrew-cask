cask 'ticktick' do
  version '2.8.50,84'
  sha256 'b9748b5a4bcab865957ec5206e87fe9b741fb219295a83cb0c170628ebc6927d'

  # appest-public.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version.before_comma}_#{version.after_comma}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'

  app 'TickTick.app'
end
