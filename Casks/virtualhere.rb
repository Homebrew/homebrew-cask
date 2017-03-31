cask 'virtualhere' do
  version :latest
  sha256 :no_check

  url 'https://www.virtualhere.com/sites/default/files/usbclient/VirtualHere.dmg'
  name 'VirtualHere'
  homepage 'https://www.virtualhere.com/usb_client_software'

  app 'VirtualHere.app'
end
