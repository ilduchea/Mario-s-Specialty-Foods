require 'rails_helper'

RSpec.describe ProductsController, type: :controller do
  it { should route(:get, '/').to('products#index') }
  it { should route(:get, '/products/new').to('products#new') }
  it { should route(:get, '/products/1').to('products#show', id: 1) }
  it { should route(:get, '/products/1/edit').to('products#edit', id: 1) }
end
