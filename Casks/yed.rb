cask :v1 => 'yed' do
  version '3.14.4'
  sha256 '616a193585abf959cdb89a9f0154883ecd96eac64b165f49c7b1a6e7b655162a'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis
  tags :vendor => 'yWorks'

  app 'yEd.app'

  depends_on :macos => '>= 10.8'
end
