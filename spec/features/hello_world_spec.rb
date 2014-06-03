

feature 'User wants greeting' do
  scenario 'says Hello World' do
    visit helloWorld_path
    expect(page).to have_css 'h1', :text => 'Hello World', :visible => true
  end
end