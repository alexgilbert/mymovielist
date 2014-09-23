module MovieHelper

  def user_can_edit_list?
    @share.present? && @list.present? && @share.writable
  end

  def not_on_list_page?
    params['controller'] != "lists"
  end
end
