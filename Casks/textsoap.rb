cask :v1 => 'textsoap' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://unmarked.s3.amazonaws.com/textsoap7.zip'
  name 'TextSoap'
  appcast 'https://unmarked.s3.amazonaws.com/appcast/textsoap7.xml',
          :sha256 => '37211786d3aca6f891665256f383906a337bea31958b4b7a2ff0fbbaae98709e'
  homepage 'http://www.unmarked.com/textsoap/'
  license :commercial

  app 'textsoap7.app'

  postflight do
    suppress_move_to_applications
  end
end
