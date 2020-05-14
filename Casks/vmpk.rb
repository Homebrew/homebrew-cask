cask 'vmpk' do
  version '0.7.2'
  sha256 'f032e2efff44f83a9faa60711254fb5b10e4a9465fef00cab86cc7be29ec72e3'

  # downloads.sourceforge.net/vmpk/ was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vmpk/vmpk-#{version}-mac-x64.dmg"
  appcast 'https://sourceforge.net/projects/vmpk/rss'
  name 'VMPK'
  homepage 'https://vmpk.sourceforge.io/'

  depends_on macos: '>= :sierra'

  app 'vmpk.app'
end
