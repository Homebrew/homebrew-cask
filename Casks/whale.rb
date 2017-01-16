cask 'whale' do
  version '0.6.0'
  sha256 '8b904b654dd56502bdc08f33acb72c6647ed65735f24c6f7bc2434e0c0c8a006'

  url "https://github.com/1000ch/whale/releases/download/v#{version}/Whale-macos-v#{version}.zip"
  appcast 'https://github.com/1000ch/whale/releases.atom',
          checkpoint: '14c344ca7f76d3fc7a7cf88a78871feac1fcbf41391b2d1e713e0acaf331c1e6'
  name 'Whale'
  homepage 'https://github.com/1000ch/whale'

  app 'Whale.app'
end
