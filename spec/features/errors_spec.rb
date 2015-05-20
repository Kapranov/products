require "rails_helper"

describe "403 page" do
  around :each do |example|
    Rails.application.config.consider_all_requests_local = false
    example.run
    Rails.application.config.consider_all_requests_local = true
  end

  it 'should respond with 403 page' do
    visit '/403'
    expect(page.status_code).to eq 403
    expect(page).to have_content("FORBIDDEN")
  end
end

describe "404 page" do
  around :each do |example|
    Rails.application.config.consider_all_requests_local = false
    example.run
    Rails.application.config.consider_all_requests_local = true
  end

  it 'should respond with 404 page' do
    visit '/404'
    expect(page.status_code).to eq 404
    expect(page).to have_content("NOT FOUND")
  end
end

describe "200 page" do
  around :each do |example|
    Rails.application.config.consider_all_requests_local = false
    example.run
    Rails.application.config.consider_all_requests_local = true
  end

  it 'should respond with 200 page' do
    visit '/200'
    expect(page.status_code).to eq 200
    expect(page).to have_content("OK")
  end
end
