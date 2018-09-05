cask 'wordservice' do
  version '2.8.2'
  sha256 'bf2a982702d922b984639b372510ee73cdfc28f5c5fbbb5fa540bb2702beab7a'

  # amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/wordservice/#{version}/WordService.zip"
  name 'WordService'
  homepage 'https://www.devontechnologies.com/products/freeware.html#c1115'

  app 'WordService.app'
end
