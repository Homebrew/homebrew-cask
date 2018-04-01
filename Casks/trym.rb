cask 'trym' do
  version '1.1.0'
  sha256 'e277977e54070760b29de0ccc6ce549d0fe2b36f930c5a2208191f050224d991'

  url "http://kontentapps.com/releases/trym-#{version.dots_to_hyphens}.dmg"
  name 'Trym'
  homepage 'http://kontentapps.com/trym'

  app 'Trym.app'

  zap trash: [
               '~/Library/Application Support/Trym',
               '~/Library/Preferences/com.kontentapps.svgtool.plist',
             ]
end
