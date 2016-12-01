cask 'zerobranestudio' do
  version '1.40'
  sha256 'f061dbb5f4fce1a1b930224bfc32c11e6e884e2405e95007df2d6441aab0c128'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com/'

  app 'ZeroBraneStudio.app'
end
