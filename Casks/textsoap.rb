cask 'textsoap' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://unmarked.s3.amazonaws.com/textsoap7.zip'
  appcast 'https://unmarked.s3.amazonaws.com/appcast/textsoap7.xml',
          :checkpoint => 'ddbb0073e1116c64c75620c2fe43bd7af1befc07e82459a3cb614c92a294579d'
  name 'TextSoap'
  homepage 'http://www.unmarked.com/textsoap/'
  license :commercial

  app 'textsoap7.app'

  postflight do
    suppress_move_to_applications
  end
end
