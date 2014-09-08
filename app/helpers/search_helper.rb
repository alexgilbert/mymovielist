module SearchHelper

  def render_results type
  	case type
    	when "1"
    		render 'movie_results' 
    	when "2"
    		render 'person_results'
    	when "3"
    		render 'company_results'
    	when "4"
    		render 'collection_results'
        when "5" 
                render 'tv_results'
    	else
    		render 'movie_results'
  	end
  end
end
