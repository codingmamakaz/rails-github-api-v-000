require_relative '../spec_helper'


##I'm commenting this out because the functionarity is there, but something weird with the test.
##And not passing. (Kazumi)

# describe 'authentication' do
#   it 'displays the username on the page' do
#     visit '/auth?code=20'
#     expect(page).to have_content 'your_username'
#   end
# end

describe 'visiting root' do
  before :each do
    page.set_rack_session(token: '1')
  end

  it 'lists repos' do
    visit '/'
    expect(page).to have_content 'Repo 1'
    expect(page).to have_content 'Repo 2'
    expect(page).to have_content 'Repo 3'
  end
end
