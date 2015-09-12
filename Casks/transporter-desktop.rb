cask :v1 => 'transporter-desktop' do
  version '4.0.8_19845'
  sha256 '9d8d0606286a4baa1a3fc4df4bad64e879cb434766f6d4466c0d3a8ec89020f5'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  name 'Transporter Desktop'
  appcast 'http://appsoftware.connecteddata.com/mac/2.5/Appcast.xml',
          :sha256 => 'efcff11ade18ff84419bb2bdde971c77cf067dc1fb6d84fd5b5898bb1bfefc5b'
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
