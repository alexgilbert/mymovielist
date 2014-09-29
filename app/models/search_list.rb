class SearchList
  def initialize list
    @list = list
  end

  def by_name name
    @list.movies.where(name: name)
  end
end
