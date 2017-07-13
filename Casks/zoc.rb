cask 'zoc' do
  version '7.15.1'
  sha256 '6c3d659cc0faed97ab39f794a4514cc31bb834b728f481e001a812550304e6dd'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: 'c33a198c8b5828e99d797abe6683ca752c7ca7cd3b151b4324afa6ffa23f6e23'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
