require 'test_helper'

class CreateCategoriesTest < ActionDispatch::IntegrationTest
   
    test "get new category form" do
       get "/categories/new"
        assert_response :success
        
        post "/categories", params: { category: { name: "sports"}}
        assert_response :redirect
        follow_redirect!
    end    
        
end