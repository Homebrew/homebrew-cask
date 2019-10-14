cask 'zerobranestudio' do
  version '1.80'
  sha256 '05ceebcd3d073a3e6242bcbf2ff0f1f1c503cf058d4736ff5ccba0fea8563e46'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  appcast 'https://raw.githubusercontent.com/pkulchenko/ZeroBraneStudio/master/CHANGELOG.md'
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com/'

  app 'ZeroBraneStudio.app'
end
