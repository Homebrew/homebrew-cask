cask 'upspin' do
  version :latest
  sha256 :no_check

  url 'https://upspin.io/dl/upspin.darwin_amd64.tar.gz'
  name 'upspin'
  homepage 'https://upspin.io/'

  binary 'cacheserver', target: 'upspin-cacheserver'
  binary 'upspin'
  binary 'upspin-audit'
  binary 'upspin-ui'
  binary 'upspinfs'

  zap trash: '~/.upspin'
end
