module Hbc::Verify; end

require 'hbc/verify/checksum'
require 'hbc/verify/gpg'

module Hbc::Verify
  extend self

  def verifications
    [
      Hbc::Verify::Checksum
      # todo: Hbc::Verify::Gpg
    ]
  end

  def all(cask, downloaded_path)
    odebug 'Verifying download'
    verifications = for_cask(cask)
    odebug "#{verifications.size} verifications defined", verifications
    verifications.each do |verification|
      odebug "Running verification of class #{verification}"
      verification.new(cask, downloaded_path).verify
    end
  end

  def for_cask(cask)
    odebug "Determining which verifications to run for Cask #{cask}"
    verifications.select do |verification|
      odebug "Checking for verification class #{verification}"
      verification.me?(cask)
    end
  end
end
