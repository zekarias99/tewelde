require 'spec_helper'

describe "Pages" do

 describe "(Home page)" do
 	it	"should have the content 'Home' " do
 	   visit '/pages/home'
 	   page.should have_selector('h1', :text => 'Home')	
 	end	

 	it "should have the base title " do 
 		visit '/pages/home'
 		page.should have_selector('title', :text => 'Tewelde')
 	end	
    
    it "should not have a custom page title" do
    	visit '/pages/home'
    	page.should_not have_selector('title', :text => ' | Home')
    end	
 end

 describe "(Help page)" do
 	it	"should have the content 'Help' " do
 	   visit '/pages/help'
 	   page.should have_selector('h1', :text => 'Help')	
 	end	

 	it "should have the right title " do 
 		visit '/pages/help'
 		page.should have_selector('title', :text => 'Tewelde | Help')
 	end
 end

 describe "(About page)" do
 	it	"should have the content 'About' " do
 	   visit '/pages/about'
 	   page.should have_selector('h1', :text => 'About')	
 	end	

 	it "should have the right title " do 
 		visit '/pages/about'
 		page.should have_selector('title', :text => 'Tewelde | About')
 	end
 end

 describe "(Contact page)" do
 	it	"should have the content 'Contact' " do
 	   visit '/pages/contact'
 	   page.should have_selector('h1', :text => 'Contact')	
 	end	

 	it "should have the right title " do 
 		visit '/pages/contact'
 		page.should have_selector('title', :text => 'Tewelde | Contact')
 	end
 end	
end
