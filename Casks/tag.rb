cask 'tag' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/feisty-dog/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/feisty-dog/Tag.zip'
  name 'Tag'
  homepage 'https://www.feisty-dog.com/tag/'

  app 'Tag.app'
end
