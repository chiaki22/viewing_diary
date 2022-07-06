class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '映画' },
    { id: 2, name: '小説' },
    { id: 3, name: '自己啓発本' },
    { id: 4, name: '漫画' },
    { id: 5, name: 'ドラマ' },
    { id: 6, name: 'アニメ' },
    { id: 7, name: 'ミュージカル' },
    { id: 8, name: '舞台' },
    { id: 9, name: 'ライブ' },
    { id: 10, name: '美術館' },
    { id: 11, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :works, :recommendations
  
  end