cask 'webponize' do
  version '2.3.0'
  sha256 '490d39d212c71b077a9bc65cc0657bb9ba030ab7ed55f0b79fb6330dafdf24df'

  # github.com/webponize/webponize was verified as official when first introduced to the cask
  url "https://github.com/webponize/webponize/releases/download/v#{version}/WebPonize.app.zip"
  appcast 'https://github.com/webponize/webponize/releases.atom'
  name 'WebPonize'
  homepage 'https://webponize.org/'

  depends_on macos: '>= :high_sierra'

  app 'WebPonize.app'
end
