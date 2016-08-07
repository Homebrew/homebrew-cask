require"digest"

module Sha256Helper
  def random_sha256
    seed = "--#{rand(10_000)}--#{Time.now}--"
    Digest::SHA2.hexdigest(seed)
  end
end
