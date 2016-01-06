cask 'wercker' do
  version :latest
  sha256 :no_check

  url 'http://downloads.wercker.com/release/wercker-darwin-latest.tar.gz'
  name 'Wercker'
  homepage 'http://wercker.com/downloads/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'wercker.app'
end
