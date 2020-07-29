cask 'widelands' do
  version '20'
  sha256 '074d86d82a77cf8f4907afcf2be9cbe5b283af01f76aa074d60d3d3e20db110e'

  # launchpad.net/widelands/ was verified as official when first introduced to the cask
  url "https://launchpad.net/widelands/build#{version}/build#{version}/+download/widelands-build#{version}-macosx-10.9.dmg"
  name 'Widelands'
  homepage 'https://www.widelands.org/'

  app 'Widelands.app'

  zap trash: '~/.widelands'
end
