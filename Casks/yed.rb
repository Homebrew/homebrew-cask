cask 'yed' do
  version '3.15'
  sha256 '5c91aeeb92a61b82622c09b51c1365102e71d04d412ee369b61d154fafa8d52d'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
