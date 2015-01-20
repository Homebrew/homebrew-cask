cask :v1 => 'transporter-desktop' do
  version '3.0.21_17012'
  sha256 '48d36d53f6484364b3df93ccd054a30028b0f4fcb169c2d8475ca64ef108f510'

  # connecteddata.com is the official download host per the vendor homepage
  url "https://secure.connecteddata.com/mac/2.5/software/Transporter_Desktop_#{version}.dmg"
  homepage 'http://www.filetransporter.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Transporter Desktop.app'
end
