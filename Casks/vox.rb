cask 'vox' do
  version '2730.1,1455479596'
  sha256 '73afdc0f72a00b1b3721ace45acff7302ed79f08b593d61eb51f9a8823b4d6f2'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '39d7ec5c7457df033c2bc8862f31c83d3fddf4f51ca4e4b9778f3fd9a471164e'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
