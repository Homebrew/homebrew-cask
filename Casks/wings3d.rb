cask :v1 => 'wings3d' do
  version '1.5.3'
  sha256 'ec1bc0302fc7a12c0e5f06162673782943ac4394c2a942a6111b3f321e8be6d5'

  url "http://downloads.sourceforge.net/sourceforge/wings/wings-#{version}-macosx.dmg"
  homepage 'http://www.wings3d.com/'
  license :oss

  app "Wings3D #{version}.app"
end
