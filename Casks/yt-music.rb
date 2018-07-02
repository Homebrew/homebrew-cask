cask 'yt-music' do
  version '1.0.4,5:1530537206'
  sha256 'd69f7e854b5db387f04c8eee2e2479cfe71368d3c6c05b2b736645e6ba6db539'

  # dl.devmate.com/uk.co.wearecocoon.YT-Music was verified as official when first introduced to the cask
  url "https://dl.devmate.com/uk.co.wearecocoon.YT-Music/#{version.after_comma.before_colon}/#{version.after_colon}/YTMusic-#{version.after_comma.before_colon}.zip"
  appcast 'https://updates.devmate.com/uk.co.wearecocoon.YT-Music.xml'
  name 'YouTube Music'
  homepage 'https://github.com/steve228uk/YouTube-Music'

  app 'YT Music.app'
end
