# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 48) do

  create_table "career_reports", :force => true do |t|
    t.column "name",         :string
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
  end

  create_table "contacts", :force => true do |t|
    t.column "user_id",    :integer
    t.column "address",    :string,   :default => "", :null => false
    t.column "phone",      :string,   :default => "", :null => false
    t.column "fax",        :string,   :default => "", :null => false
    t.column "email",      :string,   :default => "", :null => false
    t.column "notes",      :text
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
    t.column "mobile",     :string,   :default => "", :null => false
    t.column "first_name", :string,   :default => "", :null => false
    t.column "last_name",  :string,   :default => "", :null => false
  end

  add_index "contacts", ["user_id"], :name => "index_contacts_on_user_id"

  create_table "headers", :force => true do |t|
    t.column "path",        :string, :default => "", :null => false
    t.column "title",       :string, :default => "", :null => false
    t.column "keywords",    :string, :default => "", :null => false
    t.column "description", :text,                   :null => false
  end

  create_table "job_candidates", :force => true do |t|
    t.column "email",             :string,   :default => "", :null => false
    t.column "created_at",        :datetime
    t.column "updated_at",        :datetime
    t.column "first_name",        :string,   :default => "", :null => false
    t.column "last_name",         :string,   :default => "", :null => false
    t.column "notification_sent", :integer,  :default => 0,  :null => false
    t.column "phone",             :string
  end

  create_table "newsletter_issues", :force => true do |t|
    t.column "newsletter_id", :integer
    t.column "subject",       :string,   :default => "", :null => false
    t.column "text",          :text
    t.column "created_at",    :datetime,                 :null => false
    t.column "html",          :text,                     :null => false
    t.column "status",        :integer,  :default => 0,  :null => false
    t.column "sent_at",       :datetime
    t.column "plain_text",    :text,                     :null => false
  end

  create_table "newsletters", :force => true do |t|
    t.column "name", :string, :default => "", :null => false
  end

  create_table "pages", :force => true do |t|
    t.column "name", :string, :default => "", :null => false
    t.column "text", :text
    t.column "html", :text
  end

  create_table "rates", :force => true do |t|
    t.column "rate",                       :string,   :default => "",    :null => false
    t.column "term",                       :text
    t.column "created_at",                 :datetime
    t.column "updated_at",                 :datetime
    t.column "is_default_calculator_rate", :boolean,  :default => false, :null => false
  end

  create_table "referrals", :force => true do |t|
    t.column "name",            :string
    t.column "email",           :string,   :default => "", :null => false
    t.column "phone",           :string,   :default => "", :null => false
    t.column "webpage_text",    :text
    t.column "webpage_html",    :text
    t.column "webpage_address", :string
    t.column "created_at",      :datetime
    t.column "updated_at",      :datetime
  end

  create_table "reminders", :force => true do |t|
    t.column "contact_id", :integer
    t.column "remind_on",  :datetime
    t.column "message",    :text,     :null => false
    t.column "created_at", :datetime
    t.column "updated_at", :datetime
  end

  add_index "reminders", ["contact_id"], :name => "index_reminders_on_contact_id"

  create_table "requests", :force => true do |t|
    t.column "job_candidate_id", :integer, :default => 0, :null => false
    t.column "career_report_id", :integer, :default => 0, :null => false
  end

  create_table "shared_files", :force => true do |t|
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
    t.column "description",  :text,     :null => false
    t.column "created_at",   :datetime
    t.column "folder",       :string
  end

  create_table "site_images", :force => true do |t|
    t.column "parent_id",    :integer
    t.column "content_type", :string
    t.column "filename",     :string
    t.column "thumbnail",    :string
    t.column "size",         :integer
    t.column "width",        :integer
    t.column "height",       :integer
  end

  create_table "subscriptions", :force => true do |t|
    t.column "contact_id",    :integer
    t.column "newsletter_id", :integer
  end

  create_table "users", :force => true do |t|
    t.column "email",                     :string,                 :default => "", :null => false
    t.column "crypted_password",          :string,   :limit => 40
    t.column "salt",                      :string,   :limit => 40
    t.column "created_at",                :datetime
    t.column "updated_at",                :datetime
    t.column "remember_token",            :string
    t.column "remember_token_expires_at", :datetime
    t.column "address",                   :string,                 :default => "", :null => false
    t.column "phone",                     :string,                 :default => "", :null => false
    t.column "mobile",                    :string,                 :default => "", :null => false
    t.column "fax",                       :string,                 :default => "", :null => false
    t.column "photo",                     :string,                 :default => "", :null => false
    t.column "job_title",                 :string,                 :default => "", :null => false
    t.column "started_on",                :datetime
    t.column "is_active",                 :integer,                :default => 0,  :null => false
    t.column "webpage_text",              :text
    t.column "webpage_address",           :string,                 :default => "", :null => false
    t.column "role",                      :integer,                :default => 0,  :null => false
    t.column "first_name",                :string,                 :default => "", :null => false
    t.column "last_name",                 :string,                 :default => "", :null => false
    t.column "webpage_html",              :text,                                   :null => false
  end

end
