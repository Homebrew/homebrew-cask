cask 'tip' do
  version '1.3.0'
  sha256 'db26cdbb41c3834d291d3e08d7d13ebf0c4d89765afdf5b91c23f8c319dd76db'

  url "https://github.com/tanin47/tip/releases/download/v#{version}/Tip.zip"
  appcast 'https://github.com/tanin47/tip/releases.atom'
  name 'Tip'
  homepage 'https://github.com/tanin47/tip'

  app 'Tip.app'

  zap trash: '~/Library/Application Scripts/tanin.tip'
end
