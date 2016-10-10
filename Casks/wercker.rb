cask 'wercker' do
  version :latest
  sha256 :no_check

  url 'http://downloads.wercker.com/release/wercker-darwin-latest.tar.gz'
  name 'Wercker'
  homepage 'http://wercker.com/downloads/'

  app 'wercker.app'
end
