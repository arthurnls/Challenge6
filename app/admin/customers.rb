ActiveAdmin.register Customer do
  permit_params :name, :phone, :email, :image, :notes

  # permit_params do
  #   permitted = [:name, :phone, :email, :image, :notes]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
