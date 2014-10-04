class WithMacosxDir < TestCask
  version '1.2.3'
  sha256 '5633c3a0f2e572cbf021507dec78c50998b398c343232bdfc7e26221d0a5db4d'

  url TestHelper.local_binary_url('MyFancyApp.zip')
  homepage 'http://example.com/MyFancyApp'

  app 'MyFancyApp/MyFancyApp.app'
end
