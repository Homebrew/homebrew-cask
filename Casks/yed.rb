cask 'yed' do
  version '3.19.1'
  sha256 '5a09aeb4834b5e3890f79932878800803cc34fad66421fc1c743dbeac0e9d3cd'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  appcast 'https://www.yworks.com/products/yed/download#download'
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  app 'yEd.app'
end
