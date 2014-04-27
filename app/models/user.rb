class User < ActiveRecord::Base
	#attr_accessible :email, :name
	has_many :microposts
	
	private
  def app_params
    params.require(:list).permit(:email, :name)
  end
end
