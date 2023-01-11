class CreateReferalCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :referal_codes do |t|
      t.string :memeber_id
      t.string :referal_code
      t.boolean :used
      t.datetime :expire_at

      t.timestamps
    end
  end
end
