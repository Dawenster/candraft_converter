Rails.application.routes.draw do
  root "pages#main"

  post "import_dictionary" => "dictionaries#import", as: :import_dictionary
  post "import_text" => "texts#import", as: :import_text
  
  get "export_text" => "texts#export", as: :export_text

  get "delete_all_records" => "pages#delete_all_records", as: :delete_all_records
end
