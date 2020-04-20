cask 'xaos' do
  version '4.0'
  sha256 '228b03d656f82483c3a9cbcae4a66601341be446807bb4fdf425544fbd8fa76a'

  # github.com/xaos-project/XaoS/ was verified as official when first introduced to the cask
  url "https://github.com/xaos-project/XaoS/releases/download/release-#{version}/XaoS-#{version}.dmg"
  appcast 'https://github.com/xaos-project/XaoS/releases.atom'
  name 'GNU XaoS'
  homepage 'https://xaos-project.github.io/'

  app 'XaoS.app'
end
