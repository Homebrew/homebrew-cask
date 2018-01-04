cask 'zoc' do
  version '7.16.4'
  sha256 '6d632c1fd1ad805b29f33553eb587f87df1f51a0bfb38ecc7067c13da5882653'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'ddb84d5f74d16ea15e8766575bec4f412c08b7875f6ed8c8884b6c205f5d8af4'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
