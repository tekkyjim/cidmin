Factory.define :transaction do |transaction|
  transaction.user_id { 1 }
  transaction.character_id { 1 }
  transaction.amount { 1 }
  transaction.reason { 'string' }
end
