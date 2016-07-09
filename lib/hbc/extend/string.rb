class String
  def undent
    gsub(%r{^.{#{(slice(%r{^ +}) || '').length}}}, "")
  end
end
