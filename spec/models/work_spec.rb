require 'rails_helper'

RSpec.describe Work, type: :model do
  before do
    @work = FactoryBot.build(:work)
  end

  describe '新規登録' do

    context '新規登録できる場合' do
      it '全ての項目が入力されていれば登録できる' do
        expect(@work).to be_valid
      end
      it '画像が空でも登録できる' do
        @work.image = nil
        expect(@work).to be_valid
      end
      it 'メモが空でも登録できる' do
        @work.memo = nil
        expect(@work).to be_valid
      end
    end

    context '新規登録できない場合' do
      it '作品名が空では登録できない' do
        @work.title = nil
        @work.valid?
        expect(@work.errors.full_messages).to include("Title can't be blank")
      end
      it '日付が空だと登録できない' do
        @work.day = nil
        @work.valid?
        expect(@work.errors.full_messages).to include("Day can't be blank")
      end
      it 'カテゴリーがChooseでは登録できない' do
        @work.category_id = nil
        @work.valid?
        expect(@work.errors.full_messages).to include("Category can't be blank")
      end
      it 'スターがChooseでは登録できない' do
        @work.star_id = nil
        @work.valid?
        expect(@work.errors.full_messages).to include("Star can't be blank")
      end
    end

  end

end
