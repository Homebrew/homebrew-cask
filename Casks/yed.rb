cask 'yed' do
  version '3.16.2.1'
  sha256 '03e938e7ccff5111fc838de19443cb4bb2126c5b2b6ff3ddb876d20f74d2a386'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
