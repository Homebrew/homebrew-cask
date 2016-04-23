cask 'vox' do
  version '2770.0,1460481870'
  sha256 '176838822e6f4a34090ec2cce751742564ec21eb983e6f23dc08003602bc6be5'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '753c981ba823969abc567d3f6fc35c3946a8d039fe1f234b94955e0175ab62da'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
