cask 'zerobranestudio' do
  version '1.70'
  sha256 'd5b3f68dc5a04873b2b0c139758c4872ed1def26b8b9717b3df909f65404e0be'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  appcast 'https://raw.githubusercontent.com/pkulchenko/ZeroBraneStudio/master/CHANGELOG.md',
          checkpoint: '08d45a9ad607f91389d224fde821e17e153567d0025bca00347688e28364acea'
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com/'

  app 'ZeroBraneStudio.app'
end
