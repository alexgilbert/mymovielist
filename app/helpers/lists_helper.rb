module ListsHelper
  def list_owner_name list
  	if current_user == list.user 
  		"Your List"
  	else
  		list.user.name 
  	end
  end
end
