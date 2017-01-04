cask 'textsoap' do
  version '8.3'
  sha256 '6d4fdc5a3866d95d06c28135ae4c602d1bf2572d9bfe59fe335f4a9b8fa8768d'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: '91b001a03e3322296844a7ac66a3b6d8a7aa4553f1bebe38b2123d2149993245'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end
