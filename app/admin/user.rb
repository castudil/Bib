ActiveAdmin.register User do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  form do |f|
    f.inputs "Details" do

      f.input :approved
      f.input :activo
    end
    f.actions
  end


  permit_params :email, :password, :approved , :activo
 

  index do
    column :id
    column :email
    column :approved
    column :activo 
    actions
  end


end
