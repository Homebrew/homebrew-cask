cask 'wercker' do
  version :latest
  sha256 :no_check

  url 'http://downloads.wercker.com/release/wercker-darwin-latest.tar.gz'
  name 'Wercker'
  homepage 'http://www.wercker.com/'

  app 'wercker.app'
end
