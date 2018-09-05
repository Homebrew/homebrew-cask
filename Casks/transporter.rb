cask 'transporter' do
  version '4.2.12_22430,2.5'
  sha256 '76f61d2df639b2539d47319d9afa6c80cffe511de520b4e5bcec05173d9f6cb3'

  # secure.connecteddata.com was verified as official when first introduced to the cask
  url "https://secure.connecteddata.com/mac/#{version.after_comma}/software/Transporter_Desktop_#{version.before_comma}.dmg"
  appcast "http://appsoftware.connecteddata.com/mac/#{version.after_comma}/Appcast.xml"
  name 'Transporter Desktop'
  homepage 'https://helper.nexsansupport.com/tfc_support'

  app 'Transporter Desktop.app'
end
