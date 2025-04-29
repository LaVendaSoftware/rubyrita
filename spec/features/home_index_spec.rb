describe "Home page" do
  before { visit(root_path) }

  it { expect(page).to have_http_status(:success) }
  it { expect(page).to have_css("div", text: "Rubyrita 🍻") }
end
