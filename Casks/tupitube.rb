cask 'tupitube' do
  version '0.2.11'
  sha256 'c31f859081746c75e867b16bbedb6118e8c774a6c931852855094c40126598a1'

  # downloads.sourceforge.net/tupi2d was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/tupi2d/tupitube_desk_#{version}.dmg"
  appcast 'https://sourceforge.net/projects/tupi2d/rss?path=/Mac%20OSX'
  name 'TupiTube Desk'
  name 'Tupi2d'
  homepage 'https://www.maefloresta.com/'

  app 'TupiTube.app'
end
