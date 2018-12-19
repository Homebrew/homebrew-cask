cask 'vmpk' do
  version '0.7.1'
  sha256 '1fbf3bdd7917f7f02444e8af3b0c21db350e27e8857bf9f3701b952f904ab8ec'

  # downloads.sourceforge.net/vmpk was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vmpk/vmpk-#{version}-mac-x64.dmg"
  appcast 'https://sourceforge.net/projects/vmpk/rss'
  name 'VMPK'
  homepage 'https://vmpk.sourceforge.io/'

  app 'vmpk.app'
end
