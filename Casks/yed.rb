cask 'yed' do
  version '3.15.0.2'
  sha256 '4fa8723c46d2cab39c35f49d1171c816aa82d620bebc4d6a587d4f956735405d'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
