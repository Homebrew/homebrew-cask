cask 'textsoap' do
  version '8.3.3'
  sha256 '2b03bde3fc8391a4a1adc8f705f08f7d0f5383f7a46afb0588d1d0c6f3cf3e47'

  # unmarked.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://unmarked.s3.amazonaws.com/textsoap#{version.major}.zip"
  appcast "https://unmarked.s3.amazonaws.com/appcast/textsoap#{version.major}.xml",
          checkpoint: 'a4a2218e787c24a36617ad8cabfd0a170cfdeb12e00aca07874d4fc252776b16'
  name 'TextSoap'
  homepage 'https://www.unmarked.com/textsoap/'

  app "textsoap#{version.major}.app"

  postflight do
    suppress_move_to_applications
  end
end
