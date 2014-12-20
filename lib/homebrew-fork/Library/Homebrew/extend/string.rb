class String
  def undent
    gsub(/^.{#{(slice(/^ +/) || '').length}}/, '')
  end

  # String.chomp, but if result is empty: returns nil instead.
  # Allows `chuzzle || foo` short-circuits.
  def chuzzle
    s = chomp
    s unless s.empty?
  end
end

class NilClass
  def chuzzle; end
end
