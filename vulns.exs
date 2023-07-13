defmodule PasswordCompare do
  def option_one(password, md5_hash) do
    case :crypto.hash(:md5, password) == md5_hash do
      true -> :entry_granted_op1
      false -> :entry_denied_op1
    end
  end
end
