cask :v1 => 'zerobranestudio' do
  version '0.90'
  sha256 'd7e694d811ad150d8a4c63ef81c0d0b4eb7f7a60561ed7a9802cb3ae2a346783'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  homepage 'https://studio.zerobrane.com'
  license :mit

  app 'ZeroBraneStudio.app'
end
