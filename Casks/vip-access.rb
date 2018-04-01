cask 'vip-access' do
  version :latest
  sha256 :no_check

  # s3-us-east-2.amazonaws.com/com-symantec-vip-us-east-2-prd-idcenter-downloads was verified as official when first introduced to the cask
  url 'http://s3-us-east-2.amazonaws.com/com-symantec-vip-us-east-2-prd-idcenter-downloads/VIPAccessSecurityCode.dmg'
  name 'Symantec VIP Access'
  homepage 'https://vip.symantec.com/'

  app 'VIP Access.app'

  zap trash: [
               '~/Library/Caches/com.symantec.VIP-Access',
               '~/Library/Preferences/com.symantec.VIP-Access.plist',
             ]
end
