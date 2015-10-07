cask :v1 => 'trailer' do
  version '1.3.7'
  sha256 '9f022093051d6512a888cb1a0760afebed51e7c9f33dd991a81218f492491e55'

  url "https://ptsochantaris.github.io/trailer/trailer#{version.delete('.')}.zip"
  appcast 'https://ptsochantaris.github.io/trailer/appcast.xml',
          :sha256 => '412ac048f613b8efd0032dc87d06175ebae29f5b4dc99e9df5d5575fc73535d9'
  name 'Trailer'
  homepage 'https://ptsochantaris.github.io/trailer/'
  license :mit

  app 'Trailer.app'
end
