cask :v1 => 'zerobranestudio' do
  version '1.20'
  sha256 '1ad9bc8b4c636f4a2c8bf6adb55ba0b4327c134ced0058744496ac6accc8265e'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com'
  license :mit

  app 'ZeroBraneStudio.app'
end
