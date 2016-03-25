cask 'vox' do
  version '2750.1,1458727468'
  sha256 '30f1ff0c7f75c596e348de027115531935cce8febc53c5924b11d4d231acf956'

  # devmate.com/com.coppertino.Vox was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: 'f6a4a28a53b4470bfb866cdf0c150795c787bb539352f063f4ec6942906c79cb'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
