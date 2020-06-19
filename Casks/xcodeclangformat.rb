cask 'xcodeclangformat' do
  version '1.2.0'
  sha256 'bd6e0c78230a4912741356d96d69753f5fb911193c40168f3a0978096eb2c4a3'

  url "https://github.com/mapbox/XcodeClangFormat/releases/download/v#{version}/XcodeClangFormat.zip"
  appcast 'https://github.com/mapbox/XcodeClangFormat/releases.atom'
  name 'XcodeClangFormat'
  homepage 'https://github.com/mapbox/XcodeClangFormat'

  app 'XcodeClangFormat.app'

  zap trash: [
               '~/Library/Application Scripts/com.mapbox.XcodeClangFormat',
               '~/Library/Application Scripts/com.mapbox.XcodeClangFormat.clang-format',
               '~/Library/Containers/com.mapbox.XcodeClangFormat',
               '~/Library/Containers/com.mapbox.XcodeClangFormat.clang-format',
               '~/Library/Group Containers/XcodeClangFormat',
             ]
end
