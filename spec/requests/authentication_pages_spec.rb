require 'spec_helper'
describe "Authentication" do
 		
 	subject { page }
 
 	describe "signin page" do
 		before { visit signin_path } 

		it { should have_selector('h1', text: 'Sign in') }
 		it { should have_selector('title', text: 'Sign in' ) }

 	end


  describe 'Authentication' do

    describe 'authorization' do

    	describe "as wrong user" do
    		let(:user) { FactoryGirl.create(:user) }
    		let(:wrong_user) { FactoryGirl.create(:user, email: "wrong@example.com") }
    		before { sign_in(user) }

    		describe "visiting Users#edit page" do
    			before { visit edit_user_path(wrong_user) }
    			it { should_not have_selector('title', text: full_title('Edit user')) }
    		end

    		describe "submitting a PUT request to the Users#update action" do
    			before { put user_path(wrong_user) }
    			specify { response.should redirect_to(root_path) }
    		end
    	end


      describe "for non-signed in users" do
        let(:user) { FactoryGirl.create(:user) }

        describe "visiting the edit page" do
          before { visit edit_user_path(user) }
          it { should have_selector('title', text: 'Sign in') }
        end

        describe "submitting to the update action" do
          before { put user_path(user) }
          specify { response.should redirect_to(signin_path) }
        end
      end
    end
  end
end



