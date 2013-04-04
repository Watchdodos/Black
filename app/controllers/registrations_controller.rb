class RegistrationsController < Devise::RegistrationsController
	def create
		first_name = params[:first_name]
		last_name = params[:last_name]
		color = params[:color]
		email = params[:user][:email]

		wufoo = WuParty.new(WUFOO_ACCOUNT, WUFOO_API_KEY)
		form = wufoo.form(WUFOO_FORM_ID)

		result = form.submit({
			'Field1' => first_name,
			'Field2' => last_name,
			'Field3' => email,
			'Field5' => color
		})
		
		if result['Success'] == 0
			puts result['ErrorText']
		end

		super
	end
end