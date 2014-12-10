cask :v1 => 'thirty-three-rpm' do
  version :latest
  sha256 :no_check

  url 'http://www.edenwaith.com/downloads/33rpm.dmg'
  homepage 'http://www.edenwaith.com/products/33rpm/'
  license :unknown    # todo: improve this machine-generated value

  app '33 RPM.app'
end
