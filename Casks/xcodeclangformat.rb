cask 'xcodeclangformat' do
  version '1.1.0'
  sha256 'd6fd1a1af949bbc99e0e0a3e15c8c5b3ce4d138b6b8943ee17459dc2dbc4f583'

  url "https://github.com/mapbox/XcodeClangFormat/releases/download/v#{version}/XcodeClangFormat-v#{version}.zip"
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
