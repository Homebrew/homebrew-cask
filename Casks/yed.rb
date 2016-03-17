cask 'yed' do
  version '3.15.0.1'
  sha256 '7bfdea8092e01be8fe21f5d45cb7c127bf684d7ccf3228a82c39af8e52b98eeb'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'
  license :gratis

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
