module SearchHelper
  def render_results 
    render SEARCH_LIST[0][params[:type].to_i][:view]   
  end

  def search_has_been_performed?
    session[:search_type].present? && session[:search_value].present?
  end

  def get_search_type
    session[:search_type] if session[:search_type].present?
  end

  def get_search_value
    session[:search_value] if session[:search_value].present?
  end
end
