cask :v1 => 'transporter-desktop' do
  version '3.1.15_18289'
  sha256 'fecf3b1944832261900237537962a4783d709caa96c3e93ec2d828b88425ec8e'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  homepage 'http://www.filetransporter.com/'
  license :commercial

  app 'Transporter Desktop.app'
end
