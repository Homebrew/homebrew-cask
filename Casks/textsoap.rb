cask 'textsoap' do
  version '8.2'
  sha256 '84af657f6c2b3033228f245ff3b4487dfaac508ed228b5ab040852858b0f7ee1'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '06a133c9ba24c5e22b11658eace5c000128e675dccfc4f6532255054c8f59019'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end
