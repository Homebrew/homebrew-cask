cask :v1 => 'tapaal' do
  version '3.1.0'
  sha256 '62314055445808d5ae2074623625c9ac38174aa294abd0d43590fe886c16fc46'

  url "http://www.tapaal.net/fileadmin/download/tapaal-3.1/tapaal-#{version}-mac64.dmg"
  homepage 'http://www.tapaal.net'
  license :unknown    # todo: improve this machine-generated value

  app 'Tapaal.app'
end
