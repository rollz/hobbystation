ActiveAdmin.register Product do

  permit_params :name, :flavor_text, :condition, :price, :stock_quantity, :image_filename, :category_id
  
  # form(:html => { :multipart => true }) do |f|
  #   f.inputs "Product" do
  #     f.input :name
  #     f.input :image_filename, :as => :file
  #     f.input :condition
  #     f.input :price
  #     f.input :stock_quantity
  #   end
  #   f.buttons
  # end
  # rails session exam search by category on exam
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


end
