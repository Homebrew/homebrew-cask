cask 'vrew' do
  version '0.4.30'
  sha256 '811a778524ae56a772d95186a739b13f77cf71c864ac67255dd6fea179e3ffd8'

  url "https://vrew-files.voyagerx.com/Vrew-#{version}.dmg"
  name 'vrew'
  homepage 'https://vrew.voyagerx.com/'

  app 'Vrew.app'

  zap trash: [
               '~/Library/Application Support/vrew',
               '~/Library/Preferences/com.voyagerx.vrew.plist',
             ]
end
