module MovieHelper

  def user_can_edit_list?
  	@share.present? && @list.present? && @share.writable
  end
end
