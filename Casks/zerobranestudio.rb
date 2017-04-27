cask 'zerobranestudio' do
  version '1.60'
  sha256 'aa65d056f0e8c2c9cd5ed7dccb2c4fd6fe46a6c9e48dd8ca931a7bff3d31b3bf'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  appcast 'https://raw.githubusercontent.com/pkulchenko/ZeroBraneStudio/master/CHANGELOG.md',
          checkpoint: '5b1fd89c0baf7586e6da97e27e80e75352affcb83d1f8fb7f94547c4285a13c7'
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com/'

  app 'ZeroBraneStudio.app'
end
