cask :v1 => 'yed' do
  version '3.13'
  sha256 'b597d7468cef6981ed364a17c525a8b83d0818fd016c21f3efc6e3ea99922d1d'

  url "http://www.yworks.com/products/yed/demo/yEd-#{version}.dmg"
  homepage 'http://www.yworks.com/en/products_yed_about.html'

  app 'yEd.app'
end
