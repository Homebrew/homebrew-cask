cask 'zerobranestudio' do
  version '1.30'
  sha256 '167324cdbae91e0d191515d272599936ef3319484e88110a9c3e81f4b82342e7'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com'
  license :mit

  app 'ZeroBraneStudio.app'
end
