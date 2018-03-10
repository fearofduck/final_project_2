ActiveAdmin.register Forecast do

 permit_params :ds40_growth, :ds53_growth, :conv_growth, :cycle_time_id, :seasonality_id, :user_id, :intl_in_53, :dc_in_conv
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
