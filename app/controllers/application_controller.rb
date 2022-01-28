class ApplicationController < ActionController::Base
  # deviseのデフォルトメソッドを処理する前に定義したメソッドを処理する
  before_action :configure_permitted_parameters, if: :devise_controller?

    # サインイン後にどこに遷移するかを設定する(一覧画面へ)
    def after_sign_in_path_for(resource)
      post_images_path
    end

    def after_sign_out_path_for(resource)
      about_path
    end



    protected

    #nameカラムの受け取りをきょかする
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    end
end
