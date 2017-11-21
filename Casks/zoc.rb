cask 'zoc' do
  version '7.16.1'
  sha256 '2aa0cd9df0ea82d3d3e6ba1afe396151f0f062484eabd7cd98f54ad2573b69d4'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'e1932edb54cd11a8290aaae0ea26e0c5ec7800f452644b41fdda6edfeb7dc938'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
