cask 'trusteer-rapport' do
  version :latest
  sha256 :no_check

  url 'http://download.trusteer.com/Gcur4Wtnu/leopard/Rapport.dmg'
  name 'Trusteer Rapport'
  homepage 'https://www.trusteer.com/ProtectYourMoney'

  pkg 'Rapport.pkg'

  uninstall pkgutil: 'com.trusteer.ibmSecurityTrusteerEndpointProtection.*'
end
