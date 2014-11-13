cask :v1 => 'wordservice' do
  version '2.8'
  sha256 '2d32be5f99a1fd6d01d2f2d1338ec101918edec6e9a79cbe960a82bd68383478'

  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/wordservice/#{version}/WordService.zip"
  homepage 'http://www.devontechnologies.com/products/freeware.html#c1115'
  license :unknown

  service 'WordService/WordService.service'
end
