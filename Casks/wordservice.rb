cask 'wordservice' do
  version '2.8.1'
  sha256 'c8085d93400ee60d103225fbaa53409fe66b8c92afe6cda05ca74916562c3a92'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/wordservice/#{version}/WordService.zip"
  name 'WordService'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c1115/'

  app 'WordService.app'
end
