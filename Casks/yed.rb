cask 'yed' do
  version '3.17.2'
  sha256 'e15b87633727f0d97a52958f15fe34a0b802e9b5f833e6af907a52a5c2a34920'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
