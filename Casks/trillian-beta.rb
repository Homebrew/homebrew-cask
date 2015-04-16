cask :v1 => 'trillian-beta' do
  version 'latest'
  sha256 'db5b18c123d2b1aee4593c64ebbcd0f6fac52f17e6d8fa20f74be7d424bda9c1'

  url 'https://www.trillian.im/get/mac/beta/'
  # url 'http://cerulean.cachenetworks.com/trillian-for-mac-v3.1.0.15.zip'
  name 'Trillian'
  homepage 'https://www.trillian.im'
  license :commercial

  app 'Trillian.app'
end
