cask 'yed' do
  version '3.19.1.1'
  sha256 '000cd71c65db294a73830b308bcd4b1a8567bcf4395f9355f6394be1f23b7729'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  appcast 'https://www.yworks.com/products/yed/download#download'
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  app 'yEd.app'
end
