cask 'tigervpn' do
  version :latest
  sha256 :no_check

  url 'https://www.tigervpn.com/apps/download?os=OS+X'
  name 'tigerVPN'
  homepage 'https://www.tigervpn.com/'

  app 'tigerVPN.app'
end
