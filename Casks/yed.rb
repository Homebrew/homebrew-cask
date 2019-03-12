cask 'yed' do
  version '3.18.2'
  sha256 '9a6b3522cf68c8eca2e9a56f9e619e797ba97b675b043b8c36445454b86596ad'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  appcast 'https://www.yworks.com/products/yed/download#download'
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  app 'yEd.app'
end
