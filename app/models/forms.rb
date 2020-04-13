class Forms < ApplicationRecord
    validates :name, presence: {message:'名前をご入力ください。'}
    validates :mail, email: {message:'正しいメールアドレスをご入力ください。'} 
end
