cask 'yed' do
  version '3.19'
  sha256 '5deca45e973072b6f60896e26128c8b410232ed48337375d4662798affa1aae9'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  appcast 'https://www.yworks.com/products/yed/download#download'
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  app 'yEd.app'
end
