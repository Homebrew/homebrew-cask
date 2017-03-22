cask 'wingide' do
  version '6.0.1-1'
  sha256 '5221f969f9b161b68672c260d71e55f77c6eaf0324e99b6ac6105dbb44b0a5fd'

  url "https://wingware.com/pub/wingide/#{version.sub(%r{-\d+}, '')}/wingide-#{version}.dmg"
  name 'WingIDE'
  homepage 'https://www.wingware.com/'

  app 'WingIDE.app'
end
