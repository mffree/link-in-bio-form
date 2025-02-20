class BdController < ApplicationController
  def backdoor
    render({ :template => "backdoor_templates/backdoor_page" })
  end
end
