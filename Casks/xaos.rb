cask 'xaos' do
  version '4.1'
  sha256 'adc6ece52c1df78d5c2ca8c3409a89ef0c0ca3fc222e8c693fb5c2b658c8a934'

  # github.com/xaos-project/XaoS/ was verified as official when first introduced to the cask
  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg"
  appcast 'https://github.com/xaos-project/XaoS/releases.atom'
  name 'GNU XaoS'
  homepage 'https://xaos-project.github.io/'

  app 'XaoS.app'
end
