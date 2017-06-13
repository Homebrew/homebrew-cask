cask 'zoc' do
  version '7.14.4'
  sha256 'd2ba59b89c2f9bfaafde872f6133bc78e5e88caf37c704bf7b3ce24cf1992d4d'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: 'f205e684983eac36dddfe25f78606264ef5520fc0c9e6716008e2b7861000965'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
