cask 'thumbsup' do
  version '4.5.2'
  sha256 '1472e9e0f1b0e2ab6d4569f6ff4f90441de05f26cc8d0f7863df1238f5515e17'

  # s3.amazonaws.com/DTWebsiteSupport was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/DTWebsiteSupport/download/freeware/thumbsup/#{version}/ThumbsUp.app.zip"
  appcast 'http://www.devontechnologies.com/download/thank-you-for-downloading.html?productid=900000015',
          checkpoint: '3934c9489e06ca477bde9eb225730f5e839d8933832c6981ba92a6908e16b53f'
  name 'ThumbsUp'
  homepage 'http://www.devontechnologies.com/products/freeware.html#c966'

  app 'ThumbsUp.app'
end
