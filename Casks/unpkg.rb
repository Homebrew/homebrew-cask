cask :v1 => 'unpkg' do
  version '4.5'
  sha256 'e32754b07073b383320d2bc0ce4ba9bd83a3f352043bd6f500741901f00c8c17'

  url "https://github.com/downloads/timdoug/unpkg/unpkg-#{version}.zip"
  homepage 'http://www.timdoug.com/unpkg/'
  license :oss

  app "unpkg #{version}/unpkg.app"
end
