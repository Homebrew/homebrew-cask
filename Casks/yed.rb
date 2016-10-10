cask 'yed' do
  version '3.16.2'
  sha256 '90bc621ab9e6ed8c1d0efaabeed48f0fb988226c704b044bab94de21abe88ceb'

  url "https://www.yworks.com/products/yed/demo/yEd-#{version}_with-JRE8.dmg"
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/en/products/yfiles/yed/'

  depends_on macos: '>= 10.8'

  app 'yEd.app'
end
