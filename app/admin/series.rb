ActiveAdmin.register Serie do
  permit_params :title, :desc, :year, :img

  index do
    column :id
    column :title
    column :year
    actions
    end

  form do |f|
    f.inputs "Details" do
      f.input :title
      f.input :desc
      f.input :year
      f.input :img
    end
  
    f.has_many :episodes do |episode|
      episode.inputs "Episodes" do
      episode.input :title
      episode.input :url
      end
    end
    f.actions 
  end
end
