cask 'textsoap' do
  version '8.2.1'
  sha256 '6c4ebdc255e0fdeb2dbc1ca57755df1f8d20bbe059a542a0927fa2dba9ff983f'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '3b72c57964837673a3dbe0c011b5882d2cd227855f30d1f2e96d1c572fab39be'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end
