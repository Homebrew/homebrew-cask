cask 'wacom-inkspace' do
  version '2.6.0'
  sha256 'bc673839739055754c4319030a36821ab081a16669c5bed884cd925995435fa6'

  url "https://cdn.wacom.com/i/m/mac/WacomInkspaceApp_#{version}.zip"
  name 'Wacom Inkspace'
  homepage 'https://www.wacom.com/en-us/products/apps-services/inkspace'

  app 'Wacom Inkspace App.app'
end
