cask 'yed' do
  version '3.16'
  sha256 'b451da5e87f0cf0d36bc0ef653da8d809dc8dc8053ad5a96cd615e3518faa2d8'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
