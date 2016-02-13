cask 'vox' do
  version '2720.6,1455018532'
  sha256 '4c3f81e88ec071a90a305e05fb8bfe8b5b3a356dd3391b5bd1102c627d936514'

  # devmate.com is the official download host per the vendor homepage
  url "https://dl.devmate.com/com.coppertino.Vox/#{version.before_comma}/#{version.after_comma}/Vox-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.coppertino.Vox.xml',
          checkpoint: '9da3a8ebb09d1bb46ef91578347f52d3ac9649ea4738292e3fe58184d4178c92'
  name 'VOX'
  homepage 'https://coppertino.com/vox/mac'
  license :freemium

  app 'Vox.app'
end
