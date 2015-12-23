require 'pry'
describe "login page" do
  it 'should redirect from homepage to login page' do
    get '/'
    expect(last_response.status).to eq 302
    expect(last_response.header["Location"]).to match(%r{\/login$})
  end

  it 'should display login page' do
    get '/login'
    expect(last_response).to be_ok
  end
end
