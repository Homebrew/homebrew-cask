cask :v1 => 'yed' do
  version '3.14'
  sha256 '6978e180d6063e22ab0460742915b20d1f3419d284a7815041d28e318764f8ad'

  url "http://live.yworks.com/yed-downloads/yEd-#{version}_with-JRE8.dmg"
  homepage 'http://www.yworks.com/en/products_yed_about.html'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'yEd.app'
end
