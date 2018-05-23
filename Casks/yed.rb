cask 'yed' do
  version '3.18.0.2'
  sha256 '9960e3e52448dd9bc847f76b8bea686a824f9dfac03f4c84071da774176d2c79'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
