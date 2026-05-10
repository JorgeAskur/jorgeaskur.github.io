# Compatibility for the GitHub Pages/Jekyll 3 stack on Ruby 4.
# Liquid 4 still calls Ruby's removed taint API while rendering templates.
class Object
  def tainted?
    false
  end unless method_defined?(:tainted?)

  def taint
    self
  end unless method_defined?(:taint)
end
