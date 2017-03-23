cask 'yed' do
  version '3.17'
  sha256 '3e94a3d307420ccfc611d2192b572ed5ae83f0e1b35bc2ee14246dd404552519'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  depends_on macos: '>= :mountain_lion'

  app 'yEd.app'
end
