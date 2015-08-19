cask :v1 => 'trickster' do
  if MacOS.release <= :lion
    version '2.1.1'
    sha256 'cddc4a27c3c2a016f86d1688ef9708d3e8c605cfe06302470471309ccdc241db'
  else
    version '2.3.3'
    sha256 '65a06eb4c5b15b14596e6c871165068c0f7c1faa01e0c5436203ae0b46ee827a'
  end

  url "http://dl.apparentsoft.com/Trickster_#{version}.zip"
  appcast 'http://dl.apparentsoft.com/trickster.rss',
          :sha256 => 'e22a4b1cfb9581679ac0b97c018c5deaab067e84e940e9682a6a809e0294b257'
  name 'Trickster'
  homepage 'http://www.apparentsoft.com/trickster/'
  license :commercial

  app 'Trickster.app'
end
