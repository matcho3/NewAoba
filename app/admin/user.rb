ActiveAdmin.register User do



  form do |f|
    # users = User.where(body_part: 0, body_part:1, body_part: 2).limit(3)
    body = User.pluck(:body_part).uniq
    time = User.pluck(:first_time).uniq
    operation = Operation.pluck(:name).uniq
      f.inputs "Details" do
        f.input :operation_id, :as => :select, collection: operation, :label => "施術内容"
        f.input :email, :label => "Eメール"
        f.input :first_name, :label => "姓"
        f.input :last_name, :label => "名"
        f.input :birthday, :label => "誕生日", :start_year => Date.today.year - 100, :end_year => Date.today.year

        f.input :reserved_at, :label => "予約日", :time_hour => Time.now
        f.input :body_part, :label => "部位", :as => :select, :collection => body
        f.input :first_time, :label => "初診or再診", :as => :select, :collection => time
        # f.submit "Submit"
    end
  end
end


# f.input :start_at, :as => :datetimepicker

# f.input :born_at, :as => :just_datetime_picker

 # f.input :birthday, :label => "誕生日", :start_year => Date.today.year - 100, :end_year => Date.today.year
# , :label => "生年月日"

 # f.input :date_of_birth, as: :date, start_year: Date.today.year - 90,
 #                               end_year: Date.today.year - 12, discard_day: true,
 #                               order: [:month, :year]

# 'body_part >= ? AND body_part >= ? ', 1, 2
# uniqueness: true

# User.all.collect {|u| [u.body_part]}
# .having('AVG(body_part) >= ? AND AVG(body_part) >= ? AND AVG(body_part) >= ?', 0, 1, 2).limit(3)


# form do |f|
#   f.inputs do
#     f.input :user_id, :label => 'Member', :as => :select, :collection => User.all.map{|u| ["#{u.last_name}, #{u.first_name}", u.id]}
#     f.input :description
#   end
# end

# Operation select => :sortable
# Email ==>> normal
# First name == >> normal
# Last name ==>> normal

# Birthday ==>> 普通のサインインの時のような表示方法
# Reserved at　規定値をつける。Time.now　 1970 年 
# Body part: ==>> normal
# First time ==>> normal

# operation: "施術"
# email: "メールアドレス"
# first_name: "姓"
# last_name: "名"
# birthday: "生年月日"
# reserved_at: "予約日"
# body_part: "部位"
# first_time: "初診or再診"






# Operation
# Emailメールアドレス
# First name
# Last name

# Birthday
# Reserved at　規定値をつける。Time.now
# Body part 1970 年 
# First tim


# create_table "users", force: true do |t|
#     t.string   "email",                  default: "", null: false
#     t.string   "encrypted_password",     default: "", null: false
#     t.string   "reset_password_token"
#     t.datetime "reset_password_sent_at"
#     t.datetime "remember_created_at"
#     t.integer  "sign_in_count",          default: 0,  null: false
#     t.datetime "current_sign_in_at"
#     t.datetime "last_sign_in_at"
#     t.string   "current_sign_in_ip"<div class="col-md-8 col-sm-8 col-md-offset-2" style="padding-top: 100px; padding-bottom: 100px">

#     t.string   "last_sign_in_ip"
#     t.datetime "created_at"
#     t.datetime "updated_at"
#     t.string   "first_name"
#     t.string   "last_name"
#     t.date     "birthday"
#     t.datetime "reserved_at"
#     t.integer  "operation_id"
#     t.integer  "body_part"
#     t.integer  "first_time"
#     t.integer  "reservation_id"
#     t.string   "URL"
#     t.string   "remember_token"
#   end
