Rails.application.routes.draw do
  namespace :api do
    get "/contacts_url" => 'contacts#contacts_action'
    get "/many_contacts_url" => 'contacts#many_contacts_action'
  end
end
