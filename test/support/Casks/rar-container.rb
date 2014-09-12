class RarContainer < TestCask
  url TestHelper.local_binary('rarcontainer.rar')
  homepage 'http://example.com/rar-container'
  version '1.2.3'
  sha256 '35fb13fb13e6aefc38b60486627eff6b6b55b2f99f64bf47938530c6cf9e0a0f'
  depends_on :formula => 'unar'
  link 'rarcontainer/Application.app'
end
