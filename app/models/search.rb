class Search
  def initialize type, value
    @type = type
    @value = value
  end

  def results
    SearchFactory.build(@type).find(@value)
  end
end