module SearchHelper

  def render_results i
  	render SEARCH_LIST[0][i.to_i][:view]   
  end
end
