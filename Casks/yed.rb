cask :v1 => 'yed' do
  version '3.14.3'
  sha256 '2ff232c2fd64fcfd1fc9637f231c197186df94352c19f8eb3a7dc7a3949b7101'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis
  tags :vendor => 'yWorks'

  app 'yEd.app'

  depends_on :macos => '>= 10.8'
end
