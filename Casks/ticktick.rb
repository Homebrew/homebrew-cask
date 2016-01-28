cask 'ticktick' do
  version '1.0.1'
  sha256 'be20a752e9fa696dcf0f8747752190d19f5910298fa6f5a74f9e364bdda1fe41'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://appest-public.s3.amazonaws.com/download/mac/TickTick_#{version}.dmg"
  name 'TickTick'
  homepage 'https://www.ticktick.com/home'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'TickTick.app'
end
