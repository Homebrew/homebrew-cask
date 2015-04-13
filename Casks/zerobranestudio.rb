cask :v1 => 'zerobranestudio' do
  version '1.00'
  sha256 'f77ccf80fb3b7ad31c4aae404a3d0883edbfd32741e76175cf5fe5f8149da259'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com'
  license :mit

  app 'ZeroBraneStudio.app'
end
