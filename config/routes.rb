Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check
  # Invoices
  resources :invoices do
    collection do
      get 'by_date_range', to: 'invoices#invoices_by_date'
    end
  end
end
