class Textsoap < Cask
  version 'latest'
  sha256 :no_check

  url 'http://unmarked.s3.amazonaws.com/textsoap7.zip'
  homepage 'http://www.unmarked.com/textsoap/'

  app 'textsoap7.app', :target => 'TextSoap.app'
end
