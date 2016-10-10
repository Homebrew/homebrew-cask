cask 'unpkg' do
  version '4.5'
  sha256 'e32754b07073b383320d2bc0ce4ba9bd83a3f352043bd6f500741901f00c8c17'

  # github.com/downloads/timdoug/unpkg was verified as official when first introduced to the cask
  url "https://github.com/downloads/timdoug/unpkg/unpkg-#{version}.zip"
  name 'unpkg'
  homepage 'https://www.timdoug.com/unpkg/'

  app "unpkg #{version}/unpkg.app"
end
