cask 'textsoap' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://unmarked.s3.amazonaws.com/textsoap7.zip'
  appcast 'https://unmarked.s3.amazonaws.com/appcast/textsoap7.xml',
          :sha256 => '0265f6c4621f39f0b0934b84fd54304f7348e24d49a3145e35b5514d7a622819'
  name 'TextSoap'
  homepage 'http://www.unmarked.com/textsoap/'
  license :commercial

  app 'textsoap7.app'

  postflight do
    suppress_move_to_applications
  end
end
