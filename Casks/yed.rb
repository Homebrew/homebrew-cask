cask 'yed' do
  version '3.20'
  sha256 'fd695805a2c5606ceb35db44f47335b5ea39cdba7d2a31e6606eada39aa91aa6'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE14.dmg"
  appcast 'https://www.yworks.com/products/yed/download#download'
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  app 'yEd.app'
end
