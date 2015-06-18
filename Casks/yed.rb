cask :v1 => 'yed' do
  version '3.14.2'
  sha256 '8d15d7bcc04ec5ab15f11934158ce97179642ba45a87b0b3bb15e8d712ce43ee'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yEd'
  homepage 'http://www.yworks.com/en/products/yfiles/yed/'
  license :gratis
  tags :vendor => 'yWorks'

  app 'yEd.app'

  depends_on :macos => '>= 10.8'
end
