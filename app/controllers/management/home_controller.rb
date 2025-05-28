class Management::HomeController < AuthenticatedController
  def index
    render Views::Management::Home::Index.new
  end
end
