cask 'wey' do
  version '0.2.2'
  sha256 'd2985075766917a7d05f14d1ca402985a9122d9d01233fe20ee8f02f82d44eaa'

  url "https://github.com/yue/wey/releases/download/v#{version}/wey-v#{version}-darwin-x64.zip"
  appcast 'https://github.com/yue/wey/releases.atom',
          checkpoint: '1bf496f625c4c1d4ca611cec57a15145f22d4e65c30d5533fa57cee8eff1cc35'
  name 'Wey'
  homepage 'https://github.com/yue/wey'

  app 'Wey.app'
end
