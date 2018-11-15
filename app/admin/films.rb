ActiveAdmin.register Film do

 permit_params :title, :desc, :year, :img, :url

index do
column :id
column :title
column :year
actions
end

end
