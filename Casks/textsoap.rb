cask 'textsoap' do
  version '8.3.1'
  sha256 '33f6c3015d6389ba38a6691b6d306586f544c283aa4a43071168528983848351'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: 'b7a7dd38ee4f6205c9f0842089c6e8e52d3735ba6076b48290e0ce1f0656b90e'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end
