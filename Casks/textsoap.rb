cask :v1 => 'textsoap' do
  version :latest
  sha256 :no_check

  url 'http://unmarked.s3.amazonaws.com/textsoap7.zip'
  homepage 'http://www.unmarked.com/textsoap/'
  license :unknown    # todo: improve this machine-generated value

  app 'textsoap7.app'
end
