cask 'zerobranestudio' do
  version '1.50'
  sha256 '5a0356b8090a4327f31f483f366463514ac3ac3836911c74d32caafa9ff805ce'

  url "https://download.zerobrane.com/ZeroBraneStudioEduPack-#{version}-macos.dmg"
  appcast 'https://raw.githubusercontent.com/pkulchenko/ZeroBraneStudio/master/CHANGELOG.md',
          checkpoint: '8e5df7db89cd7b112d8ef521afea2ded3f57fa8b80c179fefac3ab2aabbb3fd7'
  name 'ZeroBrane Studio'
  homepage 'https://studio.zerobrane.com/'

  app 'ZeroBraneStudio.app'
end
