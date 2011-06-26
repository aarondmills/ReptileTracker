ActiveAdmin.register Price do

	form do |f|
      f.inputs "Animal Sale Details" do
        f.input :breed
        f.input :price
        f.input :date
        f.input :source
				f.input :gender, :as => :select, :collection => ["Male", "Female"]
      end
      f.buttons
    end
  
end
