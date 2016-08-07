cask 'yed' do
  version '3.16.1'
  sha256 'c933c240194f910f1fbe62b2ae9c160327290c075620d6d0adc683b6c1db7d6b'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
