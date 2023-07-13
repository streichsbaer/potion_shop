defmodule PasswordCompare do
  def option_one(password, md5_hash) do
    # ruleid: weak-hash-algorithms
    case :crypto.hash(:md4, password) == md5_hash do
      true -> :entry_granted_op1
      false -> :entry_denied_op1
    end
  end

  def option_two(password, bcrypt_salted_hash) do
    # ok: weak-hash-algorithms
    case Bcrypt.verify_pass(password, bcrypt_salted_hash) do
      true -> :entry_granted_op2
      false -> :entry_denied_op2
    end
  end
end
