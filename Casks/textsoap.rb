cask :v1 => 'textsoap' do
  version :latest
  sha256 :no_check

  url 'http://unmarked.s3.amazonaws.com/textsoap7.zip'
  homepage 'http://www.unmarked.com/textsoap/'
  license :unknown

  app 'textsoap7.app'
end
