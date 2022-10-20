require 'rails_helper'

RSpec.describe Recommendation, type: :model do
  before do
    @recommendation = FactoryBot.build(:recommendation)
  end

  describe '新規登録' do

    context '新規登録できる場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@recommendation).to be_valid
      end
      it '画像が空でも登録できる' do
        @recommendation.image = nil
        expect(@recommendation).to be_valid
      end
      it 'メモが空でも登録できる' do
        @recommendation.memo = nil
        expect(@recommendation).to be_valid
      end
    end

    context '新規登録できない場合' do
      it '作品名が空では登録できない' do
        @recommendation.title = nil
        @recommendation.valid?
        expect(@recommendation.errors.full_messages).to include("Title can't be blank")
      end
      it 'カテゴリーがChooseでは登録できない' do
        @recommendation.category_id = nil
        @recommendation.valid?
        expect(@recommendation.errors.full_messages).to include("Category can't be blank")
      end
    end

  end

end
