cask 'textsoap' do
  version '8.0.9'
  sha256 'e98eef3b2d7ecda91c800bd9d8c9f01f1d0bd9faa896865b72d8245cce2fe097'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '36101ecd320abc8e5e48d221645187dfc983ef893b1d98d749ed8d0d5e4e52ad'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'
  license :commercial

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end
