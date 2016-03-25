cask 'traktable' do
  version '0.5.2'
  sha256 '77d3800f02f2b5a2aef8a56e7986b731831738673e35c633d743df87bc556225'

  # github.com/yo-han/Traktable was verified as official when first introduced to the cask
  url "https://github.com/yo-han/Traktable/releases/download/#{version}/Traktable.zip"
  appcast 'https://github.com/yo-han/Traktable/releases.atom',
          checkpoint: 'ed5ed4c4b7c56e4a348823f162e8d23fb9f4395a0d456ca2ea8fe36b9e7e8d6e'
  name 'Traktable'
  homepage 'https://yo-han.github.io/Traktable/'
  license :oss

  app 'Traktable.app'
end
