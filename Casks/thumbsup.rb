cask 'thumbsup' do
  version '4.5.2'
  sha256 '1472e9e0f1b0e2ab6d4569f6ff4f90441de05f26cc8d0f7863df1238f5515e17'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/#{version}/ThumbsUp.app.zip"
  name 'ThumbsUp'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c966'

  app 'ThumbsUp.app'
end
