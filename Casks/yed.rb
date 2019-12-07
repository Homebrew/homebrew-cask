cask 'yed' do
  version '3.19.1.1'
  sha256 '5cedd5f6c35d1dda239674a52027aa9b427340bcb9ad18eeefa38f85b7e6626c'

  url "https://www.yworks.com/resources/yed/demo/yEd-#{version}_with-JRE10.dmg"
  appcast 'https://www.yworks.com/products/yed/download#download'
  name 'yWorks yEd'
  homepage 'https://www.yworks.com/products/yed'

  app 'yEd.app'
end
